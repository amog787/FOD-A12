.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$KeySetToValueMap;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DISTRACTION_FLAGS:Ljava/lang/String; = "distraction_flags"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_SPLASH_SCREEN_THEME:Ljava/lang/String; = "splash-screen-theme"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_UNINSTALL_REASON:Ljava/lang/String; = "uninstall-reason"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field public static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field public static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MIME_GROUP:Ljava/lang/String; = "mime-group"

.field private static final TAG_MIME_TYPE:Ljava/lang/String; = "mime-type"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPEND_PARAMS:Ljava/lang/String; = "suspend-params"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mAppIds:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field private final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mVersion:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 399
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3479
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3480
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3481
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4307
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4308
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4309
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v9, "DEBUGGABLE"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 4310
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v9

    const-string v11, "HAS_CODE"

    const/4 v12, 0x5

    aput-object v11, v4, v12

    .line 4311
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const-string v15, "PERSISTENT"

    const/16 v16, 0x7

    aput-object v15, v4, v16

    .line 4312
    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v11

    const-string v18, "FACTORY_TEST"

    const/16 v19, 0x9

    aput-object v18, v4, v19

    .line 4313
    const/16 v18, 0x20

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const-string v22, "ALLOW_TASK_REPARENTING"

    const/16 v23, 0xb

    aput-object v22, v4, v23

    .line 4314
    const/16 v22, 0x40

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v24, 0xc

    aput-object v22, v4, v24

    const-string v25, "ALLOW_CLEAR_USER_DATA"

    const/16 v26, 0xd

    aput-object v25, v4, v26

    .line 4315
    const/16 v25, 0x80

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v27, 0xe

    aput-object v25, v4, v27

    const/16 v28, 0xf

    const-string v29, "UPDATED_SYSTEM_APP"

    aput-object v29, v4, v28

    .line 4316
    const/16 v28, 0x100

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v15

    const/16 v28, 0x11

    const-string v29, "TEST_ONLY"

    aput-object v29, v4, v28

    .line 4317
    const/16 v28, 0x4000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const/16 v28, 0x13

    const-string v29, "VM_SAFE_MODE"

    aput-object v29, v4, v28

    .line 4318
    const v28, 0x8000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const/16 v28, 0x15

    const-string v29, "ALLOW_BACKUP"

    aput-object v29, v4, v28

    .line 4319
    const/high16 v28, 0x10000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const/16 v28, 0x17

    const-string v29, "KILL_AFTER_RESTORE"

    aput-object v29, v4, v28

    .line 4320
    const/high16 v28, 0x20000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const/16 v28, 0x19

    const-string v29, "RESTORE_ANY_VERSION"

    aput-object v29, v4, v28

    .line 4321
    const/high16 v28, 0x40000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const/16 v28, 0x1b

    const-string v29, "EXTERNAL_STORAGE"

    aput-object v29, v4, v28

    .line 4322
    const/high16 v28, 0x100000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const/16 v28, 0x1d

    const-string v29, "LARGE_HEAP"

    aput-object v29, v4, v28

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4325
    const/16 v4, 0x30

    new-array v4, v4, [Ljava/lang/Object;

    .line 4326
    const/16 v28, 0x400

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4327
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v10

    .line 4328
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v12

    .line 4329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v16

    .line 4330
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v11

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v19

    .line 4331
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v21

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v4, v23

    .line 4332
    aput-object v8, v4, v24

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v4, v26

    .line 4333
    aput-object v20, v4, v27

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4334
    aput-object v22, v4, v15

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4335
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4336
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4337
    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4338
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4339
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4340
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4341
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4342
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v18

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4343
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4344
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4345
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4346
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "SYSTEM_EXT"

    aput-object v1, v4, v0

    .line 4347
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    .line 4349
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v4, v1

    const/16 v0, 0x2f

    const-string v1, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4325
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/pm/Settings;

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v2, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v2}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 385
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 390
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 402
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 446
    new-instance v5, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v5}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v5, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 452
    new-instance v6, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 457
    new-instance v7, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v7}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v7, v0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 461
    new-instance v8, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v8}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 469
    new-instance v9, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v9}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 472
    new-instance v10, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v10}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 480
    new-instance v11, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v11}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v11, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 485
    new-instance v12, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v12}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 491
    new-instance v13, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v13}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 495
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 504
    new-instance v14, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v14}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 524
    new-instance v15, Lcom/android/server/pm/Settings$1;

    invoke-direct {v15, v0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v15, v0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 658
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v15}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v15, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 659
    move-object/from16 v16, v14

    new-instance v14, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v14}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 660
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v14}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 661
    new-instance v14, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v14}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 662
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v14}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/utils/WatchedArraySet;

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 663
    new-instance v14, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v14}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 664
    new-instance v14, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v14, v15}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 670
    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 671
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v15, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 672
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 673
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 674
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 675
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 676
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 677
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 679
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v15, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 681
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v15}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 682
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 683
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 684
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 685
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 687
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v6, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 689
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v7, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 691
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 692
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->snapshot()Lcom/android/server/utils/WatchedArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    .line 693
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot()Lcom/android/server/utils/WatchedSparseArray;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    .line 694
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-static {v9, v2}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    .line 696
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 698
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 699
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v13, v2}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 700
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v12, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 702
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    .line 704
    iput-object v14, v0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 706
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 707
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 710
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v2}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 711
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/Settings;
    .param p2, "x1"    # Lcom/android/server/pm/Settings$1;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 6
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "runtimePermissionsPersistence"    # Lcom/android/permission/persistence/RuntimePermissionsPersistence;
    .param p3, "permissionDataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .param p4, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p5, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 385
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 390
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 402
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 446
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 452
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 457
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 461
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 469
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 472
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 480
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 485
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 491
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 504
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 524
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 606
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 607
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 609
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 610
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 612
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 613
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 616
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 618
    iput-object p5, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 619
    new-instance v1, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    .line 620
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    .line 621
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {v1, p5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 622
    new-instance v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Lcom/android/permission/persistence/RuntimePermissionsPersistence;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 624
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 626
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 632
    new-instance v2, Ljava/io/File;

    const-string v3, "packages.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 633
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-backup.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 634
    new-instance v2, Ljava/io/File;

    const-string v3, "packages.list"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 635
    const/16 v3, 0x1a0

    const/16 v4, 0x3e8

    const/16 v5, 0x408

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 637
    new-instance v2, Ljava/io/File;

    const-string v3, "/config/sdcardfs"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .local v2, "kernelDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 641
    new-instance v3, Ljava/io/File;

    const-string v4, "packages-stopped.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 642
    new-instance v3, Ljava/io/File;

    const-string v4, "packages-stopped-backup.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 644
    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 646
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 647
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 649
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 650
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 385
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 390
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 402
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 446
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 452
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 457
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 461
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 469
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 472
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 480
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 485
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 491
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 504
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 524
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 568
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 569
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 571
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 572
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 574
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 575
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 578
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 580
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 581
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 582
    new-instance v1, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    .line 583
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    .line 584
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 585
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 586
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 587
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 588
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 589
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 590
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 591
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 592
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 593
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 594
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 596
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 597
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 599
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 600
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;

    .line 165
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;

    .line 165
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;

    .line 165
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object v0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .locals 3
    .param p1, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 4087
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 4088
    .local v0, "size":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4089
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4090
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4091
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 4088
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4096
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    .line 4097
    const/4 v1, -0x1

    return v1

    .line 4100
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    .line 4101
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 1187
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    if-eqz p2, :cond_2

    .line 1189
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1194
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_0

    .line 1195
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_1

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1203
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1204
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1205
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1210
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 1211
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_3

    .line 1212
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 1213
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    .line 1216
    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 1217
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 1220
    :cond_4
    :goto_1
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 22
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .line 3268
    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3270
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3269
    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    .line 3274
    .local v1, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 3275
    .local v0, "systemMatch":I
    const/4 v2, 0x0

    .line 3276
    .local v2, "thirdPartyMatch":I
    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 3277
    .local v3, "numMatches":I
    :goto_0
    const-string v4, "PackageSettings"

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1

    .line 3278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3278
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    return-void

    .line 3282
    :cond_1
    const/4 v6, 0x0

    .line 3283
    .local v6, "haveAct":Z
    const/4 v11, 0x0

    .line 3284
    .local v11, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ComponentName;

    .line 3285
    .local v12, "set":[Landroid/content/ComponentName;
    const/4 v13, 0x0

    move/from16 v19, v6

    move v6, v0

    .end local v0    # "systemMatch":I
    .local v6, "systemMatch":I
    .local v13, "i":I
    .local v19, "haveAct":Z
    :goto_1
    if-ge v13, v3, :cond_4

    .line 3286
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3287
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v12, v13

    .line 3288
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    if-nez v5, :cond_2

    .line 3289
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v2, :cond_3

    .line 3296
    aget-object v11, v12, v13

    .line 3297
    goto :goto_2

    .line 3299
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3300
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3304
    const/4 v5, 0x1

    .line 3305
    .end local v19    # "haveAct":Z
    .local v5, "haveAct":Z
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget v6, v15, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v19, v5

    .line 3285
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "haveAct":Z
    .restart local v19    # "haveAct":Z
    :cond_3
    add-int/lit8 v13, v13, 0x1

    move v5, v14

    goto :goto_1

    .line 3312
    .end local v13    # "i":I
    :cond_4
    :goto_2
    if-eqz v11, :cond_5

    if-ge v2, v6, :cond_5

    .line 3317
    const/4 v11, 0x0

    .line 3319
    :cond_5
    if-eqz v19, :cond_f

    if-nez v11, :cond_f

    .line 3320
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object v5, v0

    .line 3321
    .local v5, "filter":Lcom/android/server/pm/WatchedIntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3322
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 3324
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3325
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3326
    .local v13, "cat":Ljava/lang/String;
    invoke-virtual {v5, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3327
    .end local v13    # "cat":Ljava/lang/String;
    goto :goto_3

    .line 3329
    :cond_7
    const/high16 v0, 0x10000

    and-int v0, p3, v0

    if-eqz v0, :cond_8

    .line 3330
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3332
    :cond_8
    if-eqz v8, :cond_9

    .line 3333
    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3335
    :cond_9
    if-eqz p6, :cond_a

    .line 3336
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v13

    invoke-virtual {v5, v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3338
    :cond_a
    if-eqz v9, :cond_b

    .line 3339
    invoke-virtual {v5, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3341
    :cond_b
    if-eqz v10, :cond_c

    .line 3342
    invoke-virtual {v5, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3344
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3346
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    move-object/from16 v15, p4

    goto :goto_4

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Malformed mimetype "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3344
    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    move-object/from16 v15, p4

    .line 3351
    :goto_4
    move-object/from16 v4, p0

    move/from16 v14, p9

    invoke-virtual {v4, v14}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    .line 3352
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v0, v5}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v13

    .line 3353
    .local v13, "existing":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v13, :cond_e

    .line 3354
    invoke-static {v0, v5, v13}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 3356
    :cond_e
    new-instance v20, Lcom/android/server/pm/PreferredActivity;

    const/16 v18, 0x1

    move-object/from16 v21, v13

    .end local v13    # "existing":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v21, "existing":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    move-object/from16 v13, v20

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v12

    move-object/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3357
    .local v13, "pa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3358
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v5    # "filter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local v13    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v21    # "existing":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    goto :goto_6

    :cond_f
    if-nez v11, :cond_12

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3360
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "No component "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3361
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    const-string v5, " found setting preferred "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3364
    const-string v5, "; possible matches are "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v13, v12

    if-ge v5, v13, :cond_11

    .line 3366
    if-lez v5, :cond_10

    const-string v13, ", "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    :cond_10
    aget-object v13, v12, v5

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3369
    .end local v5    # "i":I
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 3371
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting preferred "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; found third party match "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3371
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :goto_6
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V
    .locals 30
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "tmpPa"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 3158
    move-object/from16 v0, p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3159
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3161
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3162
    const/4 v4, 0x0

    move v15, v2

    .end local v2    # "flags":I
    .local v4, "i":I
    .local v15, "flags":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countCategories()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 3163
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    .line 3164
    .local v2, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3165
    const/high16 v5, 0x10000

    or-int/2addr v5, v15

    move v15, v5

    .end local v15    # "flags":I
    .local v5, "flags":I
    goto :goto_1

    .line 3167
    .end local v5    # "flags":I
    .restart local v15    # "flags":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3162
    .end local v2    # "cat":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3171
    .end local v4    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 3172
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3174
    .local v4, "hasSchemes":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v14

    .line 3175
    .local v14, "dataSchemesCount":I
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v5

    .local v4, "ischeme":I
    .local v16, "hasSchemes":Z
    :goto_2
    if-ge v4, v14, :cond_a

    .line 3176
    const/4 v5, 0x1

    .line 3177
    .local v5, "doScheme":Z
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3178
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3179
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 3181
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemeSpecificParts()I

    move-result v12

    .line 3182
    .local v12, "dataSchemeSpecificPartsCount":I
    const/4 v6, 0x0

    move/from16 v17, v5

    move v11, v6

    .end local v5    # "doScheme":Z
    .local v11, "issp":I
    .local v17, "doScheme":Z
    :goto_3
    if-ge v11, v12, :cond_3

    .line 3183
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3184
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3185
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v18

    .line 3186
    .local v18, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3187
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3188
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3189
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v21, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v22, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move-object v10, v13

    move/from16 v23, v11

    .end local v11    # "issp":I
    .local v23, "issp":I
    move-object/from16 v11, v18

    move/from16 v24, v12

    .end local v12    # "dataSchemeSpecificPartsCount":I
    .local v24, "dataSchemeSpecificPartsCount":I
    move-object/from16 v12, v19

    move-object v3, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    move-object/from16 v13, v20

    move/from16 v20, v14

    .end local v14    # "dataSchemesCount":I
    .local v20, "dataSchemesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3191
    const/16 v17, 0x0

    .line 3182
    .end local v18    # "ssp":Landroid/os/PatternMatcher;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v23, 0x1

    move-object v13, v3

    move/from16 v14, v20

    move/from16 v12, v24

    const/4 v3, 0x0

    .end local v23    # "issp":I
    .restart local v11    # "issp":I
    goto :goto_3

    .end local v3    # "scheme":Ljava/lang/String;
    .end local v20    # "dataSchemesCount":I
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .restart local v12    # "dataSchemeSpecificPartsCount":I
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "dataSchemesCount":I
    :cond_3
    move/from16 v23, v11

    move/from16 v24, v12

    move-object v3, v13

    move/from16 v20, v14

    .line 3193
    .end local v11    # "issp":I
    .end local v12    # "dataSchemeSpecificPartsCount":I
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "dataSchemesCount":I
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v20    # "dataSchemesCount":I
    .restart local v24    # "dataSchemeSpecificPartsCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataAuthorities()I

    move-result v14

    .line 3194
    .local v14, "dataAuthoritiesCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "iauth":I
    :goto_4
    if-ge v13, v14, :cond_8

    .line 3195
    const/4 v5, 0x1

    .line 3196
    .local v5, "doAuth":Z
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v18

    .line 3197
    .local v18, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataPaths()I

    move-result v12

    .line 3198
    .local v12, "dataPathsCount":I
    const/4 v6, 0x0

    move v11, v6

    move/from16 v21, v17

    move/from16 v17, v5

    .end local v5    # "doAuth":Z
    .local v11, "ipath":I
    .local v17, "doAuth":Z
    .local v21, "doScheme":Z
    :goto_5
    if-ge v11, v12, :cond_5

    .line 3199
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3200
    .restart local v10    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3201
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3202
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3204
    :cond_4
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v22

    .line 3205
    .local v22, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3206
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3207
    .restart local v9    # "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3208
    const/16 v23, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v25, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v25, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v26, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v26, "builder":Landroid/net/Uri$Builder;
    move-object v10, v3

    move/from16 v27, v11

    .end local v11    # "ipath":I
    .local v27, "ipath":I
    move-object/from16 v11, v23

    move/from16 v23, v12

    .end local v12    # "dataPathsCount":I
    .local v23, "dataPathsCount":I
    move-object/from16 v12, v18

    move/from16 v28, v13

    .end local v13    # "iauth":I
    .local v28, "iauth":I
    move-object/from16 v13, v22

    move/from16 v29, v14

    .end local v14    # "dataAuthoritiesCount":I
    .local v29, "dataAuthoritiesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3210
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v17, v19

    .line 3198
    .end local v22    # "path":Landroid/os/PatternMatcher;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .end local v26    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v27, 0x1

    move/from16 v12, v23

    move/from16 v13, v28

    move/from16 v14, v29

    .end local v27    # "ipath":I
    .restart local v11    # "ipath":I
    goto :goto_5

    .end local v23    # "dataPathsCount":I
    .end local v28    # "iauth":I
    .end local v29    # "dataAuthoritiesCount":I
    .restart local v12    # "dataPathsCount":I
    .restart local v13    # "iauth":I
    .restart local v14    # "dataAuthoritiesCount":I
    :cond_5
    move/from16 v27, v11

    move/from16 v23, v12

    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3212
    .end local v11    # "ipath":I
    .end local v12    # "dataPathsCount":I
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v23    # "dataPathsCount":I
    .restart local v28    # "iauth":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_7

    .line 3213
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3214
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3215
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3216
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3218
    :cond_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3219
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3220
    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v12, v18

    move-object/from16 v25, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v22

    move-object/from16 v22, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3222
    const/4 v5, 0x0

    move/from16 v17, v5

    .end local v21    # "doScheme":Z
    .local v5, "doScheme":Z
    goto :goto_6

    .line 3212
    .end local v5    # "doScheme":Z
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "doScheme":Z
    :cond_7
    move/from16 v17, v21

    .line 3194
    .end local v18    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21    # "doScheme":Z
    .end local v23    # "dataPathsCount":I
    .local v17, "doScheme":Z
    :goto_6
    add-int/lit8 v13, v28, 0x1

    move/from16 v14, v29

    .end local v28    # "iauth":I
    .local v13, "iauth":I
    goto/16 :goto_4

    .end local v29    # "dataAuthoritiesCount":I
    .local v14, "dataAuthoritiesCount":I
    :cond_8
    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3225
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_9

    .line 3226
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3227
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3228
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3229
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3230
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v21, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3233
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    :cond_9
    const/4 v2, 0x0

    .line 3175
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .end local v29    # "dataAuthoritiesCount":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    move/from16 v14, v20

    goto/16 :goto_2

    .end local v20    # "dataSchemesCount":I
    .local v14, "dataSchemesCount":I
    :cond_a
    move/from16 v20, v14

    .line 3236
    .end local v4    # "ischeme":I
    .end local v14    # "dataSchemesCount":I
    .restart local v20    # "dataSchemesCount":I
    const/4 v3, 0x0

    move/from16 v17, v2

    .end local v2    # "doNonData":Z
    .local v3, "idata":I
    .local v17, "doNonData":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataTypes()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 3237
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v2

    .line 3238
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 3239
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3240
    .local v4, "builder":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "ischeme":I
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v14, v5, :cond_c

    .line 3241
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3242
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3243
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v5

    .line 3244
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3245
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3246
    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v13

    move-object/from16 v21, v12

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v18, "scheme":Ljava/lang/String;
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "ischeme":I
    .local v19, "ischeme":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_9

    .line 3242
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "ischeme":I
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "ischeme":I
    :cond_b
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 3240
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "ischeme":I
    .restart local v19    # "ischeme":I
    :goto_9
    add-int/lit8 v14, v19, 0x1

    .end local v19    # "ischeme":I
    .restart local v14    # "ischeme":I
    goto :goto_8

    :cond_c
    move/from16 v19, v14

    .line 3250
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "ischeme":I
    goto :goto_a

    .line 3251
    :cond_d
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3252
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3253
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v4

    move v8, v15

    move-object/from16 v9, p3

    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3256
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :goto_a
    const/16 v17, 0x0

    .line 3236
    .end local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3259
    .end local v3    # "idata":I
    :cond_e
    if-eqz v17, :cond_f

    .line 3260
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3263
    :cond_f
    return-void
.end method

.method private static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1013
    .local p0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1014
    const/4 v0, 0x0

    return-object v0

    .line 1017
    :cond_0
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .locals 42
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "originalPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p7, "primaryCpuAbi"    # Ljava/lang/String;
    .param p8, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p9, "versionCode"    # J
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "installUser"    # Landroid/os/UserHandle;
    .param p14, "allowInstall"    # Z
    .param p15, "instantApp"    # Z
    .param p16, "virtualPreload"    # Z
    .param p17, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p18, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p19, "usesStaticLibrariesVersions"    # [J
    .param p21, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 912
    .local p20, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v14, p11

    if-eqz v0, :cond_0

    .line 915
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v13, p0

    invoke-direct {v3, v0, v13}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 916
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v11, p5

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSettingBase;

    .line 917
    move-object/from16 v12, p6

    iput-object v12, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 918
    iput v14, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 919
    move/from16 v9, p12

    iput v9, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 920
    move-object/from16 v8, p7

    iput-object v8, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 921
    move-object/from16 v7, p8

    iput-object v7, v3, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 924
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 925
    move-wide/from16 v5, p9

    iput-wide v5, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 926
    move-object/from16 v4, p18

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 927
    move-object/from16 v15, p19

    iput-object v15, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 929
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 930
    move-object/from16 v6, p21

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-object/from16 v10, p17

    goto/16 :goto_7

    .line 932
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    move/from16 v9, p12

    move-object/from16 v15, p19

    move-object/from16 v6, p21

    new-instance v20, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v3, v20

    const/4 v10, 0x0

    const/4 v4, 0x0

    move v15, v4

    .line 936
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v19, p21

    invoke-direct/range {v3 .. v19}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    .line 937
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 938
    iput-object v2, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 940
    and-int/lit8 v4, p11, 0x1

    if-nez v4, :cond_8

    .line 946
    invoke-static/range {p17 .. p17}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 947
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    if-eqz p13, :cond_1

    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v5

    .line 948
    .local v6, "installUserId":I
    :goto_0
    if-eqz v4, :cond_7

    if-eqz p14, :cond_7

    .line 949
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 956
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz p13, :cond_5

    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 958
    move-object/from16 v10, p17

    invoke-static {v10, v9}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 956
    :cond_2
    move-object/from16 v10, p17

    .line 958
    :goto_2
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v9, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move/from16 v26, v5

    goto :goto_4

    .line 956
    :cond_5
    move-object/from16 v10, p17

    .line 958
    :goto_3
    const/4 v9, 0x1

    move/from16 v26, v9

    .line 960
    .local v26, "installed":Z
    :goto_4
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v9

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v21, v3

    move/from16 v33, p15

    move/from16 v34, p16

    invoke-virtual/range {v21 .. v41}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 978
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v26    # "installed":Z
    goto :goto_1

    .line 949
    :cond_6
    move-object/from16 v10, p17

    goto :goto_5

    .line 948
    :cond_7
    move-object/from16 v10, p17

    goto :goto_5

    .line 940
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "installUserId":I
    :cond_8
    move-object/from16 v10, p17

    .line 981
    :goto_5
    if-eqz v2, :cond_9

    .line 982
    iget v4, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_7

    .line 985
    :cond_9
    if-eqz v1, :cond_a

    .line 990
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 991
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 993
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 994
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 996
    invoke-static/range {p17 .. p17}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 997
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_a

    .line 998
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 999
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1000
    .local v7, "userId":I
    nop

    .line 1001
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 1000
    invoke-virtual {v3, v8, v7}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 1002
    nop

    .line 1003
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 1002
    invoke-virtual {v3, v8, v7}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 1004
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_6

    .line 1009
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a
    :goto_7
    return-object v3
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5037
    if-nez p1, :cond_0

    .line 5038
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 5041
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5043
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 5044
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5046
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5047
    .local v0, "splitNames":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v2

    .line 5048
    .local v2, "splitRevisionCodes":[I
    if-eqz v0, :cond_3

    .line 5049
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 5050
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5052
    aget v4, v2, v3

    if-eqz v4, :cond_2

    .line 5053
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v4, v2, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5049
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5057
    .end local v3    # "i":I
    :cond_3
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5059
    .end local v0    # "splitNames":[Ljava/lang/String;
    .end local v2    # "splitRevisionCodes":[I
    :goto_1
    return-void
.end method

.method private static getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4254
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4241
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 1369
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1357
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1358
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1364
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1365
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .locals 3
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .param p2, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4270
    .local v0, "id":J
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4270
    return-object v2

    .line 4275
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    throw v2

    .line 4272
    :catch_0
    move-exception v2

    .line 4275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    nop

    .line 4277
    const/4 v2, 0x0

    return-object v2
.end method

.method private invalidatePackageCache()V
    .locals 0

    .line 721
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 722
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 723
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    .line 724
    return-void
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 1164
    const-string v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/android/server/pm/Settings$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/Settings$2;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5097
    const/4 v0, 0x0

    .line 5098
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p1, :cond_2

    .line 5099
    if-nez v0, :cond_0

    .line 5100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5102
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5104
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5105
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5106
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5107
    if-eqz p1, :cond_1

    .line 5108
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5111
    .end local v1    # "flag":I
    :cond_1
    goto :goto_0

    .line 5112
    :cond_2
    if-eqz v0, :cond_3

    .line 5113
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5116
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4296
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4298
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4299
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 4300
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4301
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4297
    .end local v1    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4304
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4305
    return-void
.end method

.method private readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;
    .locals 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1846
    const/4 v0, 0x0

    .line 1848
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1850
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1852
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1853
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1855
    goto :goto_0

    .line 1857
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1858
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1859
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1860
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1861
    if-nez v0, :cond_3

    .line 1862
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1864
    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1866
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1868
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1491
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1493
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1494
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1495
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1496
    goto :goto_0

    .line 1498
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1500
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1501
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 1502
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_1

    .line 1503
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1506
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1508
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1509
    :cond_4
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3378
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3379
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3380
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 3382
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 3383
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 3384
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 3385
    goto :goto_0

    .line 3388
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3389
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_4

    .line 3390
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 3391
    .local v4, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3392
    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 3395
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3397
    invoke-virtual {v7}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3395
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3400
    .end local v4    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 3401
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3402
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3401
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3403
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3405
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 3406
    :cond_5
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Landroid/util/TypedXmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3862
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 3864
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 3865
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 3866
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 3867
    goto :goto_0

    .line 3870
    :cond_2
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3871
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 3872
    const/4 v3, 0x0

    const-string v5, "name"

    invoke-interface {p2, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3873
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3874
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 3876
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3876
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3880
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3881
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3881
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3884
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3885
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 3886
    :cond_5
    return-void
.end method

.method private readDisabledSysPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .locals 35
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3410
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3411
    .local v3, "name":Ljava/lang/String;
    const-string v4, "realName"

    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3412
    .local v21, "realName":Ljava/lang/String;
    const-string v4, "codePath"

    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3414
    .local v15, "codePathStr":Ljava/lang/String;
    const-string v4, "requiredCpuAbi"

    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3415
    .local v22, "legacyCpuAbiStr":Ljava/lang/String;
    const-string v4, "nativeLibraryPath"

    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3417
    .local v23, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string v4, "primaryCpuAbi"

    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3418
    .local v4, "primaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "secondaryCpuAbi"

    invoke-interface {v1, v2, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3419
    .local v24, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "cpuAbiOverride"

    invoke-interface {v1, v2, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3421
    .local v25, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v4, :cond_0

    if-eqz v22, :cond_0

    .line 3422
    move-object/from16 v4, v22

    move-object/from16 v26, v4

    goto :goto_0

    .line 3425
    :cond_0
    move-object/from16 v26, v4

    .end local v4    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v26, "primaryCpuAbiStr":Ljava/lang/String;
    :goto_0
    const-string v4, "version"

    const-wide/16 v12, 0x0

    invoke-interface {v1, v2, v4, v12, v13}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v27

    .line 3427
    .local v27, "versionCode":J
    const/4 v4, 0x0

    .line 3428
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 3429
    .local v5, "pkgPrivateFlags":I
    const/4 v14, 0x1

    or-int/lit8 v29, v4, 0x1

    .line 3430
    .end local v4    # "pkgFlags":I
    .local v29, "pkgFlags":I
    const-string v4, "/priv-app/"

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3431
    or-int/lit8 v5, v5, 0x8

    move/from16 v30, v5

    goto :goto_1

    .line 3430
    :cond_1
    move/from16 v30, v5

    .line 3437
    .end local v5    # "pkgPrivateFlags":I
    .local v30, "pkgPrivateFlags":I
    :goto_1
    sget-object v31, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    .local v31, "domainSetId":Ljava/util/UUID;
    move-object/from16 v20, v31

    .line 3438
    new-instance v32, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v4, v32

    new-instance v5, Ljava/io/File;

    move-object v7, v5

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v3

    move-object/from16 v6, v21

    move-object/from16 v8, v23

    move-object/from16 v9, v26

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v33, v3

    move-wide v2, v12

    .end local v3    # "name":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    move-wide/from16 v12, v27

    move/from16 v14, v29

    move-object/from16 v34, v15

    .end local v15    # "codePathStr":Ljava/lang/String;
    .local v34, "codePathStr":Ljava/lang/String;
    move/from16 v15, v30

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    .line 3442
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v5, "ft"

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 3443
    .local v7, "timeStamp":J
    cmp-long v5, v7, v2

    if-nez v5, :cond_2

    .line 3444
    const-string v5, "ts"

    invoke-interface {v1, v6, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 3446
    :cond_2
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3447
    const-string v5, "it"

    invoke-interface {v1, v6, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3448
    const-string v5, "ut"

    invoke-interface {v1, v6, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 3449
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-interface {v1, v6, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3450
    iget v2, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v2, :cond_3

    .line 3451
    const-string v2, "sharedUserId"

    invoke-interface {v1, v6, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3453
    :cond_3
    const/4 v2, 0x0

    .line 3454
    const-string v3, "loadingProgress"

    invoke-interface {v1, v6, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    .line 3455
    .local v2, "loadingProgress":F
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)V

    .line 3457
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 3459
    .local v3, "outerDepth":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v9, 0x1

    .local v6, "type":I
    if-eq v5, v9, :cond_a

    const/4 v5, 0x3

    if-ne v6, v5, :cond_5

    .line 3460
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v10, p2

    goto :goto_4

    .line 3461
    :cond_5
    :goto_3
    if-eq v6, v5, :cond_9

    const/4 v5, 0x4

    if-ne v6, v5, :cond_6

    .line 3462
    goto :goto_2

    .line 3465
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "perms"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3466
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    move-object/from16 v10, p2

    invoke-virtual {v0, v1, v5, v10}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_2

    .line 3467
    :cond_7
    move-object/from16 v10, p2

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "uses-static-lib"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3468
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2

    .line 3470
    :cond_8
    const/4 v5, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <updated-package>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3470
    invoke-static {v5, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3472
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 3461
    :cond_9
    move-object/from16 v10, p2

    goto :goto_2

    .line 3459
    :cond_a
    move-object/from16 v10, p2

    .line 3476
    :goto_4
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v9, v33

    .end local v33    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v5, v9, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Landroid/util/TypedXmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3890
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 3892
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 3893
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 3894
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 3895
    goto :goto_0

    .line 3898
    :cond_2
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3899
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 3900
    const/4 v3, 0x0

    const-string v5, "name"

    invoke-interface {p2, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3901
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3902
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 3904
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3906
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3904
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3908
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3909
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3909
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3912
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3913
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 3914
    :cond_5
    return-void
.end method

.method private readMimeGroupLPw(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3801
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3802
    .local v1, "groupName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3803
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3804
    return-object p2

    .line 3807
    :cond_0
    if-nez p2, :cond_1

    .line 3808
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object p2, v2

    .line 3811
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3812
    .local v2, "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 3813
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 3814
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 3818
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v4, 0x3

    if-ne v5, v4, :cond_4

    .line 3819
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_8

    .line 3820
    :cond_4
    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    .line 3821
    goto :goto_0

    .line 3824
    :cond_5
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3825
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "mime-type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3826
    const-string v6, "value"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3827
    .local v6, "typeName":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 3828
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3830
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 3831
    :cond_7
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <mime-group>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3831
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3833
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3835
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 3837
    :cond_8
    return-object p2
.end method

.method private readPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .locals 77
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3485
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    const-string v9, "true"

    const-string v6, " has bad userId "

    const-string v4, " at "

    const-string v3, "Error in package manager settings: package "

    const/4 v1, 0x0

    .line 3486
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3487
    .local v2, "realName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3488
    .local v5, "userId":I
    const/4 v7, 0x0

    .line 3489
    .local v7, "sharedUserId":I
    const/4 v8, 0x0

    .line 3490
    .local v8, "codePathStr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3491
    .local v10, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3492
    .local v11, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3493
    .local v14, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3494
    .local v15, "secondaryCpuAbiString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3495
    .local v16, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3496
    .local v17, "systemStr":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3497
    .local v18, "installerPackageName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3498
    .local v19, "installerAttributionTag":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3499
    .local v20, "isOrphaned":Z
    const/16 v21, 0x0

    .line 3500
    .local v21, "installOriginatingPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3501
    .local v22, "installInitiatingPackageName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 3502
    .local v23, "installInitiatorUninstalled":Z
    const/16 v24, 0x0

    .line 3503
    .local v24, "volumeUuid":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3504
    .local v25, "updateAvailable":Z
    const/16 v26, -0x1

    .line 3505
    .local v26, "categoryHint":I
    const/16 v27, 0x0

    .line 3506
    .local v27, "uidError":Z
    const/16 v28, 0x0

    .line 3507
    .local v28, "pkgFlags":I
    const/16 v29, 0x0

    .line 3508
    .local v29, "pkgPrivateFlags":I
    const-wide/16 v30, 0x0

    .line 3509
    .local v30, "timeStamp":J
    const-wide/16 v32, 0x0

    .line 3510
    .local v32, "firstInstallTime":J
    const-wide/16 v34, 0x0

    .line 3511
    .local v34, "lastUpdateTime":J
    const/16 v36, 0x0

    .line 3512
    .local v36, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v37, 0x0

    .line 3513
    .local v37, "versionCode":J
    const/16 v39, 0x0

    .line 3514
    .local v39, "installedForceQueryable":Z
    const/16 v40, 0x0

    .line 3515
    .local v40, "isLoading":Z
    const/16 v41, 0x0

    .line 3518
    .local v41, "loadingProgress":F
    move-object/from16 v42, v15

    .end local v15    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v42, "secondaryCpuAbiString":Ljava/lang/String;
    move-object/from16 v43, v14

    .end local v14    # "primaryCpuAbiString":Ljava/lang/String;
    .local v43, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_0
    const-string v0, "name"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_32

    move-object v1, v0

    .line 3519
    :try_start_1
    const-string v0, "realName"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_31

    move-object v2, v0

    .line 3520
    :try_start_2
    const-string v0, "userId"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_30

    move v5, v0

    .line 3521
    :try_start_3
    const-string v0, "uidError"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v27, v0

    .line 3522
    const-string v0, "sharedUserId"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2f

    move v7, v0

    .line 3523
    :try_start_4
    const-string v0, "codePath"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2e

    move-object v8, v0

    .line 3525
    :try_start_5
    const-string v0, "requiredCpuAbi"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2d

    move-object/from16 v63, v0

    .line 3527
    .end local v10    # "legacyCpuAbiString":Ljava/lang/String;
    .local v63, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_6
    const-string v0, "nativeLibraryPath"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2c

    move v10, v5

    .end local v5    # "userId":I
    .local v10, "userId":I
    move-object v5, v0

    .line 3528
    .end local v11    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v5, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_7
    const-string v0, "primaryCpuAbi"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2b

    move-object v11, v0

    .line 3529
    .end local v43    # "primaryCpuAbiString":Ljava/lang/String;
    .local v11, "primaryCpuAbiString":Ljava/lang/String;
    :try_start_8
    const-string v0, "secondaryCpuAbi"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2a

    move/from16 v64, v7

    .end local v7    # "sharedUserId":I
    .local v64, "sharedUserId":I
    move-object v7, v0

    .line 3530
    .end local v42    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v7, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_9
    const-string v0, "cpuAbiOverride"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_29

    move-object/from16 v65, v8

    .end local v8    # "codePathStr":Ljava/lang/String;
    .local v65, "codePathStr":Ljava/lang/String;
    move-object v8, v0

    .line 3531
    .end local v16    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v8, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_a
    const-string v0, "updateAvailable"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v25, v0

    .line 3532
    const-string v0, "forceQueryable"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v39, v0

    .line 3533
    const-string v0, "isLoading"

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v40, v0

    .line 3534
    const-string v0, "loadingProgress"

    const/4 v14, 0x0

    invoke-interface {v12, v15, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_28

    move/from16 v41, v0

    .line 3536
    if-nez v11, :cond_0

    if-eqz v63, :cond_0

    .line 3537
    move-object/from16 v0, v63

    move-object/from16 v42, v0

    .end local v11    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "primaryCpuAbiString":Ljava/lang/String;
    goto :goto_0

    .line 3540
    .end local v0    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v11    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_0
    move-object/from16 v42, v11

    .end local v11    # "primaryCpuAbiString":Ljava/lang/String;
    .local v42, "primaryCpuAbiString":Ljava/lang/String;
    :goto_0
    :try_start_b
    const-string v0, "version"
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_27

    move-object/from16 v48, v3

    move-object/from16 v47, v4

    const-wide/16 v3, 0x0

    :try_start_c
    invoke-interface {v12, v15, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v49
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_26

    move v14, v10

    .end local v10    # "userId":I
    .local v14, "userId":I
    move-wide/from16 v10, v49

    .line 3541
    .end local v37    # "versionCode":J
    .local v10, "versionCode":J
    :try_start_d
    const-string v0, "installer"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 3542
    const-string v0, "installerAttributionTag"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 3543
    const-string v0, "isOrphaned"

    const/4 v3, 0x0

    invoke-interface {v12, v15, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v20, v0

    .line 3544
    const-string v0, "installInitiator"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 3545
    const-string v0, "installOriginator"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3546
    const-string v0, "installInitiatorUninstalled"

    const/4 v3, 0x0

    invoke-interface {v12, v15, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v23, v0

    .line 3548
    const-string v0, "volumeUuid"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 3549
    const-string v0, "categoryHint"

    const/4 v4, -0x1

    invoke-interface {v12, v15, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move/from16 v26, v0

    .line 3552
    const-string v0, "domainSetId"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    .line 3554
    .local v37, "domainSetIdString":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_25

    if-eqz v0, :cond_1

    .line 3556
    :try_start_e
    iget-object v0, v13, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v38, v0

    .local v0, "domainSetId":Ljava/util/UUID;
    goto :goto_1

    .line 3672
    .end local v0    # "domainSetId":Ljava/util/UUID;
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-wide/from16 v67, v34

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    const/4 v12, 0x5

    move-object/from16 v34, v2

    move-object v11, v5

    move v5, v14

    move-object/from16 v14, v42

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_d

    .line 3558
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    :cond_1
    :try_start_f
    invoke-static/range {v37 .. v37}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    move-object/from16 v38, v0

    .line 3561
    .local v38, "domainSetId":Ljava/util/UUID;
    :goto_1
    const-string v0, "publicFlags"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_25

    move-object/from16 v17, v0

    .line 3562
    if-eqz v17, :cond_3

    .line 3564
    :try_start_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_1

    move/from16 v28, v0

    .line 3566
    goto :goto_2

    .line 3565
    :catch_1
    move-exception v0

    .line 3567
    :goto_2
    :try_start_11
    const-string v0, "privateFlags"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    move-object v4, v0

    .line 3568
    .end local v17    # "systemStr":Ljava/lang/String;
    .local v4, "systemStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 3570
    :try_start_12
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_2

    move/from16 v29, v0

    .line 3572
    move/from16 v43, v29

    move/from16 v29, v28

    move-object/from16 v28, v4

    goto/16 :goto_5

    .line 3571
    :catch_2
    move-exception v0

    .line 3607
    :cond_2
    move/from16 v43, v29

    move/from16 v29, v28

    move-object/from16 v28, v4

    goto/16 :goto_5

    .line 3576
    .end local v4    # "systemStr":Ljava/lang/String;
    .restart local v17    # "systemStr":Ljava/lang/String;
    :cond_3
    :try_start_13
    const-string v0, "flags"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_25

    move-object/from16 v17, v0

    .line 3577
    if-eqz v17, :cond_7

    .line 3579
    :try_start_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_3

    move/from16 v28, v0

    .line 3581
    goto :goto_3

    .line 3580
    :catch_3
    move-exception v0

    .line 3582
    :goto_3
    :try_start_15
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v4, v28, v0

    if-eqz v4, :cond_4

    .line 3583
    or-int/lit8 v29, v29, 0x1

    .line 3585
    :cond_4
    sget v4, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v16, v28, v4

    if-eqz v16, :cond_5

    .line 3586
    or-int/lit8 v16, v29, 0x2

    move/from16 v29, v16

    .line 3588
    :cond_5
    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_0

    and-int v43, v28, v16

    if-eqz v43, :cond_6

    .line 3589
    or-int/lit8 v29, v29, 0x8

    .line 3591
    :cond_6
    or-int/2addr v0, v4

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v28, v0

    move-object/from16 v28, v17

    move/from16 v43, v29

    move/from16 v29, v0

    .end local v28    # "pkgFlags":I
    .local v0, "pkgFlags":I
    goto :goto_5

    .line 3596
    .end local v0    # "pkgFlags":I
    .restart local v28    # "pkgFlags":I
    :cond_7
    :try_start_16
    const-string v0, "system"

    invoke-interface {v12, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_25

    move-object v4, v0

    .line 3597
    .end local v17    # "systemStr":Ljava/lang/String;
    .restart local v4    # "systemStr":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 3598
    :try_start_17
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    .line 3599
    :cond_8
    move v0, v3

    :goto_4
    or-int v0, v28, v0

    move-object/from16 v28, v4

    move/from16 v43, v29

    move/from16 v29, v0

    .end local v28    # "pkgFlags":I
    .restart local v0    # "pkgFlags":I
    goto :goto_5

    .line 3672
    .end local v0    # "pkgFlags":I
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v28    # "pkgFlags":I
    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-wide/from16 v67, v34

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    const/4 v12, 0x5

    move-object/from16 v34, v2

    move-object v11, v5

    move v5, v14

    move-object/from16 v14, v42

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_d

    .line 3603
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_9
    or-int/lit8 v0, v28, 0x1

    move-object/from16 v28, v4

    move/from16 v43, v29

    move/from16 v29, v0

    .line 3607
    .end local v4    # "systemStr":Ljava/lang/String;
    .local v28, "systemStr":Ljava/lang/String;
    .local v29, "pkgFlags":I
    .local v43, "pkgPrivateFlags":I
    :goto_5
    :try_start_18
    const-string v0, "ft"

    const-wide/16 v3, 0x0

    invoke-interface {v12, v15, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_24

    move-wide/from16 v30, v16

    .line 3608
    cmp-long v0, v30, v3

    if-nez v0, :cond_a

    .line 3609
    :try_start_19
    const-string v0, "ts"

    invoke-interface {v12, v15, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_5

    move-wide/from16 v3, v16

    .end local v30    # "timeStamp":J
    .local v3, "timeStamp":J
    goto :goto_6

    .line 3672
    .end local v3    # "timeStamp":J
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v30    # "timeStamp":J
    :catch_5
    move-exception v0

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-wide/from16 v67, v34

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    const/4 v12, 0x5

    move-object/from16 v34, v2

    move-object v11, v5

    move v5, v14

    move-object/from16 v14, v42

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_d

    .line 3608
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_a
    move-wide/from16 v3, v30

    .line 3611
    .end local v30    # "timeStamp":J
    .restart local v3    # "timeStamp":J
    :goto_6
    :try_start_1a
    const-string v0, "it"
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_23

    move-wide/from16 v30, v3

    const-wide/16 v3, 0x0

    .end local v3    # "timeStamp":J
    .restart local v30    # "timeStamp":J
    :try_start_1b
    invoke-interface {v12, v15, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_22

    move-wide/from16 v32, v16

    .line 3612
    :try_start_1c
    const-string v0, "ut"

    invoke-interface {v12, v15, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_21

    .line 3616
    .end local v34    # "lastUpdateTime":J
    .local v3, "lastUpdateTime":J
    if-eqz v2, :cond_b

    .line 3617
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_6

    move-object/from16 v34, v0

    .end local v2    # "realName":Ljava/lang/String;
    .local v0, "realName":Ljava/lang/String;
    goto :goto_7

    .line 3672
    .end local v0    # "realName":Ljava/lang/String;
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v2    # "realName":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v34, v2

    move-wide/from16 v67, v3

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-object/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    const/4 v12, 0x5

    move-object v2, v1

    move-object v11, v5

    move-object v1, v6

    move v5, v14

    move-object/from16 v14, v42

    goto/16 :goto_d

    .line 3616
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_b
    move-object/from16 v34, v2

    .line 3619
    .end local v2    # "realName":Ljava/lang/String;
    .local v34, "realName":Ljava/lang/String;
    :goto_7
    if-nez v1, :cond_c

    .line 3620
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_8

    .line 3620
    const/4 v2, 0x5

    :try_start_1f
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_7

    move-object/from16 v44, v1

    move-wide/from16 v67, v3

    move-object/from16 v74, v9

    move-object v9, v13

    move-wide/from16 v12, v30

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v14

    move-wide/from16 v14, v32

    goto/16 :goto_b

    .line 3672
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_7
    move-exception v0

    move v12, v2

    move-wide/from16 v67, v3

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-object/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    move-object v2, v1

    move-object v11, v5

    move-object v1, v6

    move v5, v14

    move-object/from16 v14, v42

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move-object v2, v1

    move-wide/from16 v67, v3

    move-object v1, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-object/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v65

    const/4 v12, 0x5

    move-object v11, v5

    move v5, v14

    move-object/from16 v14, v42

    goto/16 :goto_d

    .line 3623
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_c
    move-object/from16 v2, v65

    .end local v65    # "codePathStr":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    if-nez v2, :cond_d

    .line 3624
    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3626
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_a

    .line 3624
    const/4 v15, 0x5

    :try_start_21
    invoke-static {v15, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_9

    move-object/from16 v44, v1

    move-object v6, v2

    move-wide/from16 v67, v3

    move-object/from16 v74, v9

    move-object v9, v13

    move/from16 v65, v14

    move v2, v15

    move-wide/from16 v12, v30

    move-wide/from16 v14, v32

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    goto/16 :goto_b

    .line 3672
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_9
    move-exception v0

    move-wide/from16 v67, v3

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move v12, v15

    move-object/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move-object v8, v2

    move-object v11, v5

    move-object v15, v7

    move v5, v14

    move-object/from16 v14, v42

    move/from16 v7, v64

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move-wide/from16 v67, v3

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v74, v9

    move-wide/from16 v37, v10

    move-object v9, v13

    move-object/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v43

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move/from16 v7, v64

    const/4 v12, 0x5

    move-object v8, v2

    move-object v11, v5

    move v5, v14

    move-object/from16 v14, v42

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_d

    .line 3627
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_d
    const/4 v15, 0x5

    if-lez v14, :cond_f

    .line 3628
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_11

    const/16 v16, 0x0

    move/from16 v65, v14

    .end local v14    # "userId":I
    .local v65, "userId":I
    move-object/from16 v14, v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v44, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v44, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v66, v2

    .end local v2    # "codePathStr":Ljava/lang/String;
    .local v66, "codePathStr":Ljava/lang/String;
    move-object v2, v0

    move-wide/from16 v67, v3

    move-wide/from16 v69, v30

    move-object/from16 v4, v48

    .end local v3    # "lastUpdateTime":J
    .end local v30    # "timeStamp":J
    .local v67, "lastUpdateTime":J
    .local v69, "timeStamp":J
    move-object/from16 v3, v34

    move-object/from16 v71, v4

    move-object/from16 v72, v47

    move-object/from16 v4, v17

    move-object/from16 v73, v6

    move-object/from16 v6, v42

    move-object/from16 v74, v9

    move/from16 v9, v65

    move/from16 v12, v29

    move/from16 v13, v43

    move-object/from16 v17, v38

    :try_start_23
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_10

    move-object v1, v0

    .line 3636
    .end local v36    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_e

    .line 3637
    const/4 v0, 0x6

    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure adding uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_c

    move/from16 v3, v65

    .end local v65    # "userId":I
    .local v3, "userId":I
    :try_start_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3639
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3637
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_b

    move/from16 v65, v3

    move-wide/from16 v14, v32

    move-wide/from16 v2, v67

    move-wide/from16 v12, v69

    goto/16 :goto_8

    .line 3672
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_b
    move-exception v0

    const/4 v12, 0x5

    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v66

    move-wide/from16 v30, v69

    move-object/from16 v4, v71

    move-object/from16 v1, v73

    move-object v11, v5

    move v5, v3

    move-object/from16 v3, v72

    goto/16 :goto_d

    .end local v3    # "userId":I
    .restart local v65    # "userId":I
    :catch_c
    move-exception v0

    move/from16 v3, v65

    const/4 v12, 0x5

    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object/from16 v8, v66

    move-wide/from16 v30, v69

    move-object/from16 v4, v71

    move-object/from16 v1, v73

    move-object v11, v5

    move v5, v3

    move-object/from16 v3, v72

    .end local v65    # "userId":I
    .restart local v3    # "userId":I
    goto/16 :goto_d

    .line 3641
    .end local v3    # "userId":I
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v65    # "userId":I
    :cond_e
    move/from16 v3, v65

    .end local v65    # "userId":I
    .restart local v3    # "userId":I
    move-wide/from16 v12, v69

    .end local v69    # "timeStamp":J
    .local v12, "timeStamp":J
    :try_start_26
    invoke-virtual {v1, v12, v13}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_f

    .line 3642
    move-wide/from16 v14, v32

    .end local v32    # "firstInstallTime":J
    .local v14, "firstInstallTime":J
    :try_start_27
    iput-wide v14, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_e

    .line 3643
    move/from16 v65, v3

    move-wide/from16 v2, v67

    .end local v3    # "userId":I
    .end local v67    # "lastUpdateTime":J
    .local v2, "lastUpdateTime":J
    .restart local v65    # "userId":I
    :try_start_28
    iput-wide v2, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_d

    .line 3676
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    :goto_8
    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-wide/from16 v67, v2

    move-object/from16 v6, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v2, 0x5

    goto/16 :goto_b

    .line 3672
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_d
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-wide/from16 v67, v2

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v8, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    goto/16 :goto_d

    .end local v2    # "lastUpdateTime":J
    .end local v65    # "userId":I
    .restart local v3    # "userId":I
    .restart local v67    # "lastUpdateTime":J
    :catch_e
    move-exception v0

    move/from16 v65, v3

    move-wide/from16 v2, v67

    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v8, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v3    # "userId":I
    .end local v67    # "lastUpdateTime":J
    .restart local v2    # "lastUpdateTime":J
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v2    # "lastUpdateTime":J
    .end local v14    # "firstInstallTime":J
    .end local v65    # "userId":I
    .restart local v3    # "userId":I
    .restart local v32    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_f
    move-exception v0

    move/from16 v65, v3

    move-wide/from16 v14, v32

    move-wide/from16 v2, v67

    move-object/from16 v9, p0

    move-object/from16 v36, v1

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v8, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v3    # "userId":I
    .end local v32    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v2    # "lastUpdateTime":J
    .restart local v14    # "firstInstallTime":J
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "lastUpdateTime":J
    .end local v12    # "timeStamp":J
    .end local v14    # "firstInstallTime":J
    .restart local v32    # "firstInstallTime":J
    .restart local v36    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v67    # "lastUpdateTime":J
    .restart local v69    # "timeStamp":J
    :catch_10
    move-exception v0

    move-wide/from16 v14, v32

    move-wide/from16 v2, v67

    move-wide/from16 v12, v69

    move-object/from16 v9, p0

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v8, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v32    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .end local v69    # "timeStamp":J
    .restart local v2    # "lastUpdateTime":J
    .restart local v12    # "timeStamp":J
    .restart local v14    # "firstInstallTime":J
    goto/16 :goto_d

    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v65    # "userId":I
    .end local v66    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .local v3, "lastUpdateTime":J
    .local v14, "userId":I
    .restart local v30    # "timeStamp":J
    .restart local v32    # "firstInstallTime":J
    :catch_11
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v66, v2

    move-wide v2, v3

    move-object/from16 v74, v9

    move/from16 v65, v14

    move-wide/from16 v12, v30

    move-wide/from16 v14, v32

    move-object/from16 v9, p0

    move-wide/from16 v67, v2

    move-object v1, v6

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v10, v63

    move-object/from16 v8, v66

    const/4 v12, 0x5

    move-object v11, v5

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "lastUpdateTime":J
    .end local v30    # "timeStamp":J
    .end local v32    # "firstInstallTime":J
    .local v2, "lastUpdateTime":J
    .restart local v12    # "timeStamp":J
    .local v14, "firstInstallTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v65    # "userId":I
    .restart local v66    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_d

    .line 3645
    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v65    # "userId":I
    .end local v66    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .restart local v3    # "lastUpdateTime":J
    .local v14, "userId":I
    .restart local v30    # "timeStamp":J
    .restart local v32    # "firstInstallTime":J
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    :cond_f
    move-object/from16 v44, v1

    move-object/from16 v66, v2

    move-wide v2, v3

    move-object/from16 v73, v6

    move-object/from16 v74, v9

    move/from16 v65, v14

    move-wide/from16 v12, v30

    move-wide/from16 v14, v32

    move-object/from16 v72, v47

    move-object/from16 v71, v48

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "lastUpdateTime":J
    .end local v30    # "timeStamp":J
    .end local v32    # "firstInstallTime":J
    .local v2, "lastUpdateTime":J
    .restart local v12    # "timeStamp":J
    .local v14, "firstInstallTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v65    # "userId":I
    .restart local v66    # "codePathStr":Ljava/lang/String;
    move/from16 v1, v64

    .end local v64    # "sharedUserId":I
    .local v1, "sharedUserId":I
    if-eqz v1, :cond_11

    .line 3646
    if-lez v1, :cond_10

    .line 3647
    :try_start_29
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v47

    new-instance v4, Ljava/io/File;
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_15

    move-object/from16 v6, v66

    .end local v66    # "codePathStr":Ljava/lang/String;
    .local v6, "codePathStr":Ljava/lang/String;
    :try_start_2a
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v46, v0

    move-object/from16 v48, v34

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move-object/from16 v51, v42

    move-object/from16 v52, v7

    move-object/from16 v53, v8

    move-wide/from16 v54, v10

    move/from16 v56, v29

    move/from16 v57, v43

    move/from16 v58, v1

    move-object/from16 v62, v38

    invoke-direct/range {v46 .. v62}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_14

    move-object v4, v0

    .line 3654
    .end local v36    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v4, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_2b
    invoke-virtual {v4, v12, v13}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3655
    iput-wide v14, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3656
    iput-wide v2, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 3657
    move-object/from16 v9, p0

    :try_start_2c
    iget-object v0, v9, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_12

    move/from16 v64, v1

    move-wide/from16 v67, v2

    move-object/from16 v36, v4

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v2, 0x5

    goto/16 :goto_b

    .line 3672
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_12
    move-exception v0

    move-wide/from16 v67, v2

    move-object/from16 v36, v4

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v5, v65

    move v7, v1

    move-object/from16 v1, v73

    goto/16 :goto_d

    :catch_13
    move-exception v0

    move-object/from16 v9, p0

    move-wide/from16 v67, v2

    move-object/from16 v36, v4

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v5, v65

    move v7, v1

    move-object/from16 v1, v73

    goto/16 :goto_d

    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v36    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_14
    move-exception v0

    move-object/from16 v9, p0

    move-wide/from16 v67, v2

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v5, v65

    move v7, v1

    move-object/from16 v1, v73

    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .restart local v66    # "codePathStr":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v6, v66

    move-wide/from16 v67, v2

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v5, v65

    move v7, v1

    move-object/from16 v1, v73

    .end local v66    # "codePathStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_d

    .line 3662
    .end local v6    # "codePathStr":Ljava/lang/String;
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v66    # "codePathStr":Ljava/lang/String;
    :cond_10
    move-object/from16 v9, p0

    move-object/from16 v6, v66

    .end local v66    # "codePathStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_1b

    move-object/from16 v4, v71

    :try_start_2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_1a

    move-wide/from16 v67, v2

    move-object/from16 v2, v44

    .end local v44    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v67    # "lastUpdateTime":J
    :try_start_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has bad sharedId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_19

    move-object/from16 v3, v72

    :try_start_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_18

    .line 3665
    move/from16 v64, v1

    .end local v1    # "sharedUserId":I
    .restart local v64    # "sharedUserId":I
    :try_start_31
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_17

    .line 3662
    const/4 v1, 0x5

    :try_start_32
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_16

    move-object/from16 v44, v2

    move v2, v1

    goto/16 :goto_b

    .line 3672
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_16
    move-exception v0

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move v12, v1

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    move-object/from16 v1, v73

    goto/16 :goto_d

    :catch_17
    move-exception v0

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    goto/16 :goto_d

    .end local v64    # "sharedUserId":I
    .restart local v1    # "sharedUserId":I
    :catch_18
    move-exception v0

    move/from16 v64, v1

    goto :goto_9

    :catch_19
    move-exception v0

    move/from16 v64, v1

    move-object/from16 v3, v72

    :goto_9
    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v1    # "sharedUserId":I
    .restart local v64    # "sharedUserId":I
    goto/16 :goto_d

    .end local v64    # "sharedUserId":I
    .end local v67    # "lastUpdateTime":J
    .restart local v1    # "sharedUserId":I
    .local v2, "lastUpdateTime":J
    .restart local v44    # "name":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move/from16 v64, v1

    move-wide/from16 v67, v2

    move-object/from16 v2, v44

    goto :goto_a

    :catch_1b
    move-exception v0

    move/from16 v64, v1

    move-wide/from16 v67, v2

    move-object/from16 v2, v44

    move-object/from16 v4, v71

    :goto_a
    move-object/from16 v3, v72

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move-object/from16 v1, v73

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v1    # "sharedUserId":I
    .end local v44    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v67    # "lastUpdateTime":J
    goto/16 :goto_d

    .line 3668
    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v67    # "lastUpdateTime":J
    .restart local v1    # "sharedUserId":I
    .local v2, "lastUpdateTime":J
    .restart local v37    # "domainSetIdString":Ljava/lang/String;
    .restart local v38    # "domainSetId":Ljava/util/UUID;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v66    # "codePathStr":Ljava/lang/String;
    :cond_11
    move-object/from16 v9, p0

    move/from16 v64, v1

    move-wide/from16 v67, v2

    move-object/from16 v2, v44

    move-object/from16 v6, v66

    move-object/from16 v4, v71

    move-object/from16 v3, v72

    const/4 v1, 0x5

    .end local v1    # "sharedUserId":I
    .end local v44    # "name":Ljava/lang/String;
    .end local v66    # "codePathStr":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v67    # "lastUpdateTime":J
    :try_start_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_20

    move-object/from16 v1, v73

    :try_start_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_1f

    move-object/from16 v44, v2

    move/from16 v2, v65

    .end local v65    # "userId":I
    .local v2, "userId":I
    .restart local v44    # "name":Ljava/lang/String;
    :try_start_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_1e

    .line 3670
    move/from16 v65, v2

    .end local v2    # "userId":I
    .restart local v65    # "userId":I
    :try_start_36
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_1d

    .line 3668
    const/4 v2, 0x5

    :try_start_37
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_1c

    .line 3676
    .end local v37    # "domainSetIdString":Ljava/lang/String;
    :goto_b
    move-object/from16 v72, v3

    move-object/from16 v48, v4

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v2, v18

    move/from16 v10, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v24

    move/from16 v8, v27

    move-object/from16 v9, v36

    move/from16 v3, v39

    move/from16 v35, v40

    move/from16 v4, v41

    move-object/from16 v1, v42

    move-object/from16 v27, v44

    move/from16 v24, v65

    move-object v11, v5

    move-object v15, v7

    move/from16 v5, v25

    move/from16 v7, v26

    move/from16 v25, v64

    move-object/from16 v26, v6

    move-object/from16 v6, v19

    goto/16 :goto_e

    .line 3672
    .end local v38    # "domainSetId":Ljava/util/UUID;
    :catch_1c
    move-exception v0

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move v12, v2

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move-object/from16 v2, v44

    move/from16 v7, v64

    move/from16 v5, v65

    goto/16 :goto_d

    :catch_1d
    move-exception v0

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    goto/16 :goto_d

    .end local v65    # "userId":I
    .restart local v2    # "userId":I
    :catch_1e
    move-exception v0

    move/from16 v65, v2

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v10, v63

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v2    # "userId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v44    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-object/from16 v44, v2

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    const/4 v12, 0x5

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    goto :goto_c

    :catch_20
    move-exception v0

    move-object/from16 v44, v2

    move v2, v1

    move-object/from16 v1, v73

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v10, v63

    move v12, v2

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move-object/from16 v2, v44

    :goto_c
    move/from16 v7, v64

    move/from16 v5, v65

    .end local v2    # "name":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v67    # "lastUpdateTime":J
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v14, "userId":I
    .restart local v30    # "timeStamp":J
    .restart local v32    # "firstInstallTime":J
    .local v34, "lastUpdateTime":J
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_21
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-wide/from16 v12, v30

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v14

    move-wide/from16 v14, v32

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move v12, v2

    move-object v11, v5

    move-object v8, v6

    move-object v15, v7

    move-object/from16 v2, v44

    move/from16 v7, v64

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v30    # "timeStamp":J
    .end local v32    # "firstInstallTime":J
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v12    # "timeStamp":J
    .local v14, "firstInstallTime":J
    .restart local v44    # "name":Ljava/lang/String;
    .local v45, "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v14, "userId":I
    .restart local v30    # "timeStamp":J
    .restart local v32    # "firstInstallTime":J
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_22
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-wide/from16 v12, v30

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v14

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move v12, v2

    move-object v11, v5

    move-object v8, v6

    move-object/from16 v2, v44

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v30    # "timeStamp":J
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v12    # "timeStamp":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "timeStamp":J
    .restart local v14    # "userId":I
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move-wide v12, v3

    move/from16 v65, v14

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v30, v12

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move v12, v2

    move-object v11, v5

    move-object v8, v6

    move-object/from16 v2, v44

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v3    # "timeStamp":J
    .end local v14    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v12    # "timeStamp":J
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v12    # "timeStamp":J
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v14    # "userId":I
    .restart local v30    # "timeStamp":J
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_24
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v14

    move v12, v2

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-object/from16 v17, v28

    move/from16 v28, v29

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move/from16 v29, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object v11, v5

    move-object v8, v6

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v14    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v43    # "pkgPrivateFlags":I
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v14    # "userId":I
    .restart local v17    # "systemStr":Ljava/lang/String;
    .local v28, "pkgFlags":I
    .local v29, "pkgPrivateFlags":I
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_25
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v14

    move v12, v2

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v37, v10

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object v11, v5

    move-object v8, v6

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v14    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v10, "userId":I
    .local v37, "versionCode":J
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_26
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v10

    move v12, v2

    move-object v11, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move/from16 v5, v65

    move-object v8, v6

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v10    # "userId":I
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v10

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-object v11, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v67, v34

    move-object/from16 v14, v42

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move/from16 v5, v65

    move-object v8, v6

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v42    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v10    # "userId":I
    .restart local v11    # "primaryCpuAbiString":Ljava/lang/String;
    .local v65, "codePathStr":Ljava/lang/String;
    :catch_28
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object/from16 v6, v65

    const/4 v2, 0x5

    move/from16 v65, v10

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-object v15, v7

    move-object/from16 v16, v8

    move-object v14, v11

    move-wide/from16 v67, v34

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object v11, v5

    move-object v8, v6

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .local v65, "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v8, "codePathStr":Ljava/lang/String;
    .restart local v10    # "userId":I
    .restart local v16    # "cpuAbiOverrideString":Ljava/lang/String;
    :catch_29
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object v6, v8

    move-object/from16 v74, v9

    move/from16 v65, v10

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-object v15, v7

    move-object v14, v11

    move-wide/from16 v67, v34

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v7, v64

    move-object v11, v5

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v8    # "codePathStr":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v7, "sharedUserId":I
    .restart local v8    # "codePathStr":Ljava/lang/String;
    .restart local v10    # "userId":I
    .local v42, "secondaryCpuAbiString":Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move/from16 v64, v7

    move-object v6, v8

    move-object/from16 v74, v9

    move/from16 v65, v10

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-object v14, v11

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move-object v11, v5

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v7    # "sharedUserId":I
    .end local v8    # "codePathStr":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v11    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v7    # "sharedUserId":I
    .restart local v8    # "codePathStr":Ljava/lang/String;
    .restart local v10    # "userId":I
    .local v43, "primaryCpuAbiString":Ljava/lang/String;
    :catch_2b
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move/from16 v64, v7

    move-object v6, v8

    move-object/from16 v74, v9

    move/from16 v65, v10

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-object v11, v5

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    move/from16 v5, v65

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v7    # "sharedUserId":I
    .end local v8    # "codePathStr":Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v5, "userId":I
    .restart local v7    # "sharedUserId":I
    .restart local v8    # "codePathStr":Ljava/lang/String;
    .local v11, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move/from16 v65, v5

    move-object v1, v6

    move/from16 v64, v7

    move-object v6, v8

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    move-object/from16 v10, v63

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v7    # "sharedUserId":I
    .end local v8    # "codePathStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v63    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v5    # "userId":I
    .restart local v7    # "sharedUserId":I
    .restart local v8    # "codePathStr":Ljava/lang/String;
    .local v10, "legacyCpuAbiString":Ljava/lang/String;
    :catch_2d
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move/from16 v65, v5

    move-object v1, v6

    move/from16 v64, v7

    move-object v6, v8

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v7    # "sharedUserId":I
    .end local v8    # "codePathStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v6    # "codePathStr":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v5    # "userId":I
    .restart local v7    # "sharedUserId":I
    .restart local v8    # "codePathStr":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move/from16 v65, v5

    move-object v1, v6

    move/from16 v64, v7

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v7    # "sharedUserId":I
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v64    # "sharedUserId":I
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v64    # "sharedUserId":I
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v5    # "userId":I
    .restart local v7    # "sharedUserId":I
    :catch_2f
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move/from16 v65, v5

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v5    # "userId":I
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    .restart local v65    # "userId":I
    goto/16 :goto_d

    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .end local v65    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v5    # "userId":I
    :catch_30
    move-exception v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v2, 0x5

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move v12, v2

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    move-object/from16 v34, v45

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v45    # "realName":Ljava/lang/String;
    goto :goto_d

    .end local v44    # "name":Ljava/lang/String;
    .end local v45    # "realName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object/from16 v44, v1

    move-object v1, v6

    move-object/from16 v74, v9

    move-object v9, v13

    move-object v6, v2

    move-object/from16 v75, v4

    move-object v4, v3

    move-object/from16 v3, v75

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v2, v44

    const/4 v12, 0x5

    move-object/from16 v34, v6

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .local v6, "realName":Ljava/lang/String;
    .restart local v44    # "name":Ljava/lang/String;
    goto :goto_d

    .end local v6    # "realName":Ljava/lang/String;
    .end local v44    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v74, v9

    move-object v9, v13

    const/4 v12, 0x5

    move-object/from16 v75, v2

    move-object v2, v1

    move-object v1, v6

    move-object/from16 v6, v75

    move-object/from16 v76, v4

    move-object v4, v3

    move-object/from16 v3, v76

    move-wide/from16 v67, v34

    move-object/from16 v15, v42

    move-object/from16 v14, v43

    move-object/from16 v34, v6

    .line 3673
    .end local v1    # "name":Ljava/lang/String;
    .end local v42    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v43    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v2, "name":Ljava/lang/String;
    .local v14, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v15    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v34, "realName":Ljava/lang/String;
    .restart local v67    # "lastUpdateTime":J
    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3673
    invoke-static {v12, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v72, v3

    move-object/from16 v48, v4

    move-object/from16 v63, v10

    move-object v1, v14

    move-object/from16 v6, v19

    move/from16 v10, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v24

    move/from16 v43, v29

    move-object/from16 v9, v36

    move/from16 v3, v39

    move/from16 v35, v40

    move/from16 v4, v41

    move/from16 v24, v5

    move/from16 v5, v25

    move/from16 v29, v28

    move/from16 v25, v7

    move-object/from16 v28, v17

    move/from16 v7, v26

    move-object/from16 v26, v8

    move/from16 v8, v27

    move-object/from16 v27, v2

    move-object/from16 v2, v18

    .line 3677
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "systemStr":Ljava/lang/String;
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .end local v19    # "installerAttributionTag":Ljava/lang/String;
    .end local v20    # "isOrphaned":Z
    .end local v21    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v22    # "installInitiatingPackageName":Ljava/lang/String;
    .end local v36    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v39    # "installedForceQueryable":Z
    .end local v40    # "isLoading":Z
    .end local v41    # "loadingProgress":F
    .local v1, "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .local v3, "installedForceQueryable":Z
    .local v4, "loadingProgress":F
    .local v5, "updateAvailable":Z
    .local v6, "installerAttributionTag":Ljava/lang/String;
    .local v7, "categoryHint":I
    .local v8, "uidError":Z
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v10, "isOrphaned":Z
    .local v12, "volumeUuid":Ljava/lang/String;
    .local v13, "installOriginatingPackageName":Ljava/lang/String;
    .local v14, "installInitiatingPackageName":Ljava/lang/String;
    .local v24, "userId":I
    .local v25, "sharedUserId":I
    .local v26, "codePathStr":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    .local v28, "systemStr":Ljava/lang/String;
    .local v29, "pkgFlags":I
    .local v35, "isLoading":Z
    .local v43, "pkgPrivateFlags":I
    .restart local v63    # "legacyCpuAbiString":Ljava/lang/String;
    :goto_e
    if-eqz v9, :cond_29

    .line 3678
    iput-boolean v8, v9, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3679
    move-object/from16 v17, v14

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move/from16 v21, v10

    move/from16 v22, v23

    move-object/from16 v36, v2

    .end local v2    # "installerPackageName":Ljava/lang/String;
    .local v36, "installerPackageName":Ljava/lang/String;
    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .line 3683
    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 3684
    iput-object v12, v9, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3685
    iput v7, v9, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3686
    iput-object v11, v9, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3687
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3688
    iput-object v15, v9, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3689
    iput-boolean v5, v9, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3690
    iput-boolean v3, v9, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 3691
    new-instance v0, Lcom/android/server/pm/IncrementalStates;

    move-object/from16 v17, v1

    move/from16 v1, v35

    .end local v35    # "isLoading":Z
    .local v1, "isLoading":Z
    .local v17, "primaryCpuAbiString":Ljava/lang/String;
    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/IncrementalStates;-><init>(ZF)V

    iput-object v0, v9, Lcom/android/server/pm/PackageSetting;->incrementalStates:Lcom/android/server/pm/IncrementalStates;

    .line 3693
    const-string v0, "enabled"

    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x0

    move-object/from16 v1, p1

    .end local v1    # "isLoading":Z
    .end local v3    # "installedForceQueryable":Z
    .end local v4    # "loadingProgress":F
    .local v18, "isLoading":Z
    .local v19, "installedForceQueryable":Z
    .local v20, "loadingProgress":F
    invoke-interface {v1, v3, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3694
    .local v4, "enabledStr":Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 3696
    :try_start_38
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_34

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "updateAvailable":Z
    .local v21, "updateAvailable":Z
    :try_start_39
    invoke-virtual {v9, v0, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_33

    .line 3710
    move-object/from16 v22, v6

    move-object/from16 v6, v27

    goto/16 :goto_11

    .line 3697
    :catch_33
    move-exception v0

    goto :goto_f

    .end local v21    # "updateAvailable":Z
    .restart local v5    # "updateAvailable":Z
    :catch_34
    move-exception v0

    move/from16 v21, v5

    const/4 v5, 0x0

    .line 3698
    .end local v5    # "updateAvailable":Z
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "updateAvailable":Z
    :goto_f
    move-object/from16 v3, v74

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3699
    move-object/from16 v22, v6

    const/4 v3, 0x1

    const/4 v6, 0x0

    .end local v6    # "installerAttributionTag":Ljava/lang/String;
    .local v22, "installerAttributionTag":Ljava/lang/String;
    invoke-virtual {v9, v3, v5, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v6, v27

    goto :goto_10

    .line 3700
    .end local v22    # "installerAttributionTag":Ljava/lang/String;
    .restart local v6    # "installerAttributionTag":Ljava/lang/String;
    :cond_12
    move-object/from16 v22, v6

    const/4 v3, 0x1

    const/4 v6, 0x0

    .end local v6    # "installerAttributionTag":Ljava/lang/String;
    .restart local v22    # "installerAttributionTag":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3701
    const/4 v3, 0x2

    invoke-virtual {v9, v3, v5, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v6, v27

    goto :goto_10

    .line 3702
    :cond_13
    const-string v3, "default"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3703
    invoke-virtual {v9, v5, v5, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v6, v27

    goto :goto_10

    .line 3705
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v48

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    .end local v27    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has bad enabled value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v72

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3705
    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3710
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_10
    goto :goto_11

    .line 3712
    .end local v21    # "updateAvailable":Z
    .end local v22    # "installerAttributionTag":Ljava/lang/String;
    .restart local v5    # "updateAvailable":Z
    .local v6, "installerAttributionTag":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    :cond_15
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v6, v27

    .end local v5    # "updateAvailable":Z
    .end local v27    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    .restart local v21    # "updateAvailable":Z
    .restart local v22    # "installerAttributionTag":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v3, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3715
    :goto_11
    move-object/from16 v3, p0

    move-object v5, v9

    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v5, "packageSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 3717
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 3719
    .local v0, "outerDepth":I
    :goto_12
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move/from16 v27, v9

    move-object/from16 v35, v2

    const/4 v2, 0x1

    .end local v2    # "installSource":Lcom/android/server/pm/InstallSource;
    .local v27, "type":I
    .local v35, "installSource":Lcom/android/server/pm/InstallSource;
    if-eq v9, v2, :cond_28

    const/4 v2, 0x3

    move/from16 v9, v27

    .end local v27    # "type":I
    .local v9, "type":I
    if-ne v9, v2, :cond_17

    .line 3720
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_16

    goto :goto_13

    :cond_16
    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    goto/16 :goto_18

    .line 3721
    :cond_17
    :goto_13
    const/4 v2, 0x3

    if-eq v9, v2, :cond_27

    const/4 v2, 0x4

    if-ne v9, v2, :cond_18

    .line 3722
    move-object/from16 v2, v35

    goto :goto_12

    .line 3725
    :cond_18
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3727
    .local v2, "tagName":Ljava/lang/String;
    move/from16 v27, v0

    .end local v0    # "outerDepth":I
    .local v27, "outerDepth":I
    const-string v0, "disabled-components"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3728
    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "enabledStr":Ljava/lang/String;
    .local v39, "enabledStr":Ljava/lang/String;
    invoke-direct {v3, v5, v1, v4}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Landroid/util/TypedXmlPullParser;I)V

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    goto/16 :goto_17

    .line 3729
    .end local v39    # "enabledStr":Ljava/lang/String;
    .restart local v4    # "enabledStr":Ljava/lang/String;
    :cond_19
    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "enabledStr":Ljava/lang/String;
    .restart local v39    # "enabledStr":Ljava/lang/String;
    const-string v0, "enabled-components"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3730
    invoke-direct {v3, v5, v1, v4}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Landroid/util/TypedXmlPullParser;I)V

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    goto/16 :goto_17

    .line 3731
    :cond_1a
    const-string v0, "sigs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3732
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v3, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    goto/16 :goto_17

    .line 3733
    :cond_1b
    const-string v0, "perms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3734
    nop

    .line 3735
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    .line 3734
    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 3736
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move/from16 v46, v4

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v9

    const/4 v4, 0x5

    goto/16 :goto_17

    .line 3737
    :cond_1c
    const-string v0, "proper-signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "identifier"

    if-eqz v0, :cond_1e

    .line 3738
    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    const/4 v6, 0x0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "categoryHint":I
    .end local v8    # "uidError":Z
    .local v40, "name":Ljava/lang/String;
    .local v41, "categoryHint":I
    .local v42, "uidError":Z
    invoke-interface {v1, v6, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 3739
    .local v7, "id":J
    iget-object v0, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3740
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    .line 3741
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v44

    const/16 v45, 0x1

    add-int/lit8 v44, v44, 0x1

    move-object/from16 v46, v0

    .end local v0    # "refCt":Ljava/lang/Integer;
    .local v46, "refCt":Ljava/lang/Integer;
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 3743
    .end local v46    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    :cond_1d
    move-object/from16 v46, v0

    const/16 v45, 0x1

    .end local v0    # "refCt":Ljava/lang/Integer;
    .restart local v46    # "refCt":Ljava/lang/Integer;
    iget-object v0, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    :goto_14
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .end local v7    # "id":J
    .end local v46    # "refCt":Ljava/lang/Integer;
    goto :goto_15

    .line 3746
    .end local v40    # "name":Ljava/lang/String;
    .end local v41    # "categoryHint":I
    .end local v42    # "uidError":Z
    .restart local v6    # "name":Ljava/lang/String;
    .local v7, "categoryHint":I
    .restart local v8    # "uidError":Z
    :cond_1e
    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "categoryHint":I
    .end local v8    # "uidError":Z
    .restart local v40    # "name":Ljava/lang/String;
    .restart local v41    # "categoryHint":I
    .restart local v42    # "uidError":Z
    const-string v0, "signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_15
    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    goto/16 :goto_17

    .line 3748
    :cond_1f
    const-string v0, "upgrade-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3749
    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 3750
    .local v7, "id":J
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 3751
    .end local v7    # "id":J
    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    goto/16 :goto_17

    :cond_20
    const/4 v6, 0x0

    const-string v0, "defined-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3752
    invoke-interface {v1, v6, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 3753
    .restart local v7    # "id":J
    const-string v0, "alias"

    invoke-interface {v1, v6, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3754
    .local v0, "alias":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3755
    .local v4, "refCt":Ljava/lang/Integer;
    if-eqz v4, :cond_21

    .line 3756
    iget-object v6, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    move/from16 v44, v9

    .end local v9    # "type":I
    .local v44, "type":I
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v45

    const/16 v46, 0x1

    add-int/lit8 v45, v45, 0x1

    move-object/from16 v47, v4

    .end local v4    # "refCt":Ljava/lang/Integer;
    .local v47, "refCt":Ljava/lang/Integer;
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 3758
    .end local v44    # "type":I
    .end local v47    # "refCt":Ljava/lang/Integer;
    .restart local v4    # "refCt":Ljava/lang/Integer;
    .restart local v9    # "type":I
    :cond_21
    move-object/from16 v47, v4

    move/from16 v44, v9

    const/16 v46, 0x1

    .end local v4    # "refCt":Ljava/lang/Integer;
    .end local v9    # "type":I
    .restart local v44    # "type":I
    .restart local v47    # "refCt":Ljava/lang/Integer;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    :goto_16
    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v7, v8, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 3761
    .end local v0    # "alias":Ljava/lang/String;
    .end local v7    # "id":J
    .end local v47    # "refCt":Ljava/lang/Integer;
    const/4 v4, 0x5

    goto/16 :goto_17

    .end local v44    # "type":I
    .restart local v9    # "type":I
    :cond_22
    move/from16 v44, v9

    const/16 v46, 0x1

    .end local v9    # "type":I
    .restart local v44    # "type":I
    const-string v0, "install-initiator-sigs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3762
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 3763
    .local v0, "signatures":Lcom/android/server/pm/PackageSignatures;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 3764
    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 3765
    invoke-virtual {v4, v0}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 3766
    .end local v0    # "signatures":Lcom/android/server/pm/PackageSignatures;
    const/4 v4, 0x5

    goto :goto_17

    :cond_23
    const-string v0, "domain-verification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3767
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 3768
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v4, v6, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 3772
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    const/4 v4, 0x5

    goto :goto_17

    :cond_24
    const-string v0, "mime-group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3773
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {v3, v1, v0}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    const/4 v4, 0x5

    goto :goto_17

    .line 3774
    :cond_25
    const-string v0, "uses-static-lib"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3775
    invoke-virtual {v3, v1, v5}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    const/4 v4, 0x5

    goto :goto_17

    .line 3777
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <package>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3778
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3777
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3779
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3781
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_17
    move/from16 v0, v27

    move-object/from16 v2, v35

    move-object/from16 v4, v39

    move-object/from16 v6, v40

    move/from16 v7, v41

    move/from16 v8, v42

    goto/16 :goto_12

    .line 3721
    .end local v27    # "outerDepth":I
    .end local v39    # "enabledStr":Ljava/lang/String;
    .end local v40    # "name":Ljava/lang/String;
    .end local v41    # "categoryHint":I
    .end local v42    # "uidError":Z
    .end local v44    # "type":I
    .local v0, "outerDepth":I
    .local v4, "enabledStr":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .local v7, "categoryHint":I
    .restart local v8    # "uidError":Z
    .restart local v9    # "type":I
    :cond_27
    move/from16 v27, v0

    move-object/from16 v39, v4

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v9

    const/4 v4, 0x5

    const/16 v46, 0x1

    .end local v0    # "outerDepth":I
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "categoryHint":I
    .end local v8    # "uidError":Z
    .end local v9    # "type":I
    .restart local v27    # "outerDepth":I
    .restart local v39    # "enabledStr":Ljava/lang/String;
    .restart local v40    # "name":Ljava/lang/String;
    .restart local v41    # "categoryHint":I
    .restart local v42    # "uidError":Z
    .restart local v44    # "type":I
    move-object/from16 v2, v35

    move-object/from16 v4, v39

    goto/16 :goto_12

    .line 3719
    .end local v39    # "enabledStr":Ljava/lang/String;
    .end local v40    # "name":Ljava/lang/String;
    .end local v41    # "categoryHint":I
    .end local v42    # "uidError":Z
    .end local v44    # "type":I
    .restart local v0    # "outerDepth":I
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "categoryHint":I
    .restart local v8    # "uidError":Z
    .local v27, "type":I
    :cond_28
    move-object/from16 v39, v4

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v44, v27

    move/from16 v27, v0

    .line 3782
    .end local v0    # "outerDepth":I
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "categoryHint":I
    .end local v8    # "uidError":Z
    .end local v27    # "type":I
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v40    # "name":Ljava/lang/String;
    .restart local v41    # "categoryHint":I
    .restart local v42    # "uidError":Z
    :goto_18
    goto :goto_19

    .line 3783
    .end local v17    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v18    # "isLoading":Z
    .end local v19    # "installedForceQueryable":Z
    .end local v20    # "loadingProgress":F
    .end local v21    # "updateAvailable":Z
    .end local v22    # "installerAttributionTag":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v40    # "name":Ljava/lang/String;
    .end local v41    # "categoryHint":I
    .end local v42    # "uidError":Z
    .local v1, "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .restart local v3    # "installedForceQueryable":Z
    .local v4, "loadingProgress":F
    .local v5, "updateAvailable":Z
    .local v6, "installerAttributionTag":Ljava/lang/String;
    .restart local v7    # "categoryHint":I
    .restart local v8    # "uidError":Z
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v27, "name":Ljava/lang/String;
    .local v35, "isLoading":Z
    :cond_29
    move-object/from16 v17, v1

    move-object/from16 v36, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move-object v5, v9

    move-object/from16 v40, v27

    move/from16 v18, v35

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    .end local v1    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v3    # "installedForceQueryable":Z
    .end local v4    # "loadingProgress":F
    .end local v6    # "installerAttributionTag":Ljava/lang/String;
    .end local v7    # "categoryHint":I
    .end local v8    # "uidError":Z
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "name":Ljava/lang/String;
    .end local v35    # "isLoading":Z
    .local v5, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v18    # "isLoading":Z
    .restart local v19    # "installedForceQueryable":Z
    .restart local v20    # "loadingProgress":F
    .restart local v21    # "updateAvailable":Z
    .restart local v22    # "installerAttributionTag":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v40    # "name":Ljava/lang/String;
    .restart local v41    # "categoryHint":I
    .restart local v42    # "uidError":Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3785
    :goto_19
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1471
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1472
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1473
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1474
    goto :goto_0

    .line 1476
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1477
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1478
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1479
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 1480
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_1

    .line 1481
    :cond_3
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1481
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1484
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1486
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1487
    :cond_4
    return-void
.end method

.method private readSharedUserLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .locals 10
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3918
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 3919
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3920
    .local v1, "pkgFlags":I
    const/4 v2, 0x0

    .line 3921
    .local v2, "pkgPrivateFlags":I
    const/4 v3, 0x0

    .line 3923
    .local v3, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3924
    const-string v5, "userId"

    const/4 v6, 0x0

    invoke-interface {p1, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 3925
    .local v5, "userId":I
    const-string v7, "system"

    invoke-interface {p1, v4, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3926
    or-int/lit8 v1, v1, 0x1

    .line 3928
    :cond_0
    const/4 v4, 0x5

    if-nez v0, :cond_1

    .line 3929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3931
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3929
    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 3932
    :cond_1
    if-nez v5, :cond_2

    .line 3933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: shared-user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3936
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3933
    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 3938
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v1, v2}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    move-object v3, v6

    if-nez v6, :cond_3

    .line 3940
    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Occurred while parsing settings at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3941
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3947
    .end local v5    # "userId":I
    :cond_3
    :goto_0
    if-eqz v3, :cond_a

    .line 3948
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 3950
    .local v5, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_9

    const/4 v6, 0x3

    if-ne v7, v6, :cond_5

    .line 3951
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_9

    .line 3952
    :cond_5
    if-eq v7, v6, :cond_4

    const/4 v6, 0x4

    if-ne v7, v6, :cond_6

    .line 3953
    goto :goto_1

    .line 3956
    :cond_6
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3957
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "sigs"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3958
    iget-object v8, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 3959
    :cond_7
    const-string v8, "perms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3960
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v8

    invoke-virtual {p0, p1, v8, p2}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_2

    .line 3962
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <shared-user>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3962
    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3964
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3966
    .end local v6    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 3967
    .end local v5    # "outerDepth":I
    .end local v7    # "type":I
    :cond_9
    goto :goto_3

    .line 3968
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3970
    :goto_3
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1259
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_0

    .line 1260
    return v0

    .line 1263
    :cond_0
    const-string v1, " name="

    const/4 v2, 0x5

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 1264
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v3

    .line 1265
    .local v3, "size":I
    add-int/lit16 v4, p1, -0x2710

    .line 1267
    .local v4, "index":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1268
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding duplicate app id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1275
    return v0

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0, v4, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .end local v3    # "size":I
    .end local v4    # "index":I
    goto :goto_1

    .line 1279
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1283
    return v0

    .line 1285
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1287
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private registerObservers()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 563
    return-void
.end method

.method static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V
    .locals 2
    .param p0, "pir"    # Lcom/android/server/pm/PreferredIntentResolver;
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PreferredActivity;",
            ">;)V"
        }
    .end annotation

    .line 3138
    .local p2, "existing":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 3144
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3138
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3146
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1248
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    return-void

    .line 1251
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)V

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 1255
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 1314
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 1316
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1317
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1321
    :goto_0
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 4079
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 4080
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4082
    :cond_0
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)V
    .locals 12
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p5, "primaryCpuAbi"    # Ljava/lang/String;
    .param p6, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p7, "pkgFlags"    # I
    .param p8, "pkgPrivateFlags"    # I
    .param p9, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p10, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p11, "usesStaticLibrariesVersions"    # [J
    .param p13, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1033
    .local p12, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 1034
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v7, " to "

    if-eq v6, v1, :cond_2

    .line 1035
    const/4 v6, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " shared user changed from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v10, "<nothing>"

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v9, v9, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v9, v10

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    if-eqz v1, :cond_1

    iget-object v10, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1035
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1039
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    const/4 v7, -0x8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating application package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1043
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    .line 1045
    .local v6, "isSystem":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    if-eqz v6, :cond_3

    const-string v9, " system"

    goto :goto_1

    :cond_3
    const-string v9, ""

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " code path from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; Retain data and using new"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1045
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    if-nez v6, :cond_5

    .line 1055
    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_4

    if-nez p1, :cond_4

    .line 1056
    invoke-static/range {p9 .. p9}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v7

    .line 1057
    .local v7, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_4

    .line 1058
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 1059
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v11, 0x1

    invoke-virtual {p0, v11, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1060
    const/4 v10, 0x0

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 1061
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_2

    .line 1068
    .end local v7    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_3

    .line 1051
    :cond_5
    move-object/from16 v7, p4

    .line 1070
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSettingBase;

    .line 1071
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1072
    new-instance v8, Lcom/android/server/pm/IncrementalStates;

    invoke-direct {v8}, Lcom/android/server/pm/IncrementalStates;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->incrementalStates:Lcom/android/server/pm/IncrementalStates;

    goto :goto_4

    .line 1043
    .end local v6    # "isSystem":Z
    :cond_6
    move-object/from16 v7, p4

    .line 1078
    :cond_7
    :goto_4
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 1079
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v8, -0x402e0009

    and-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1085
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, p7, 0x1

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 1086
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v8, p8, 0x8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1088
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x20000

    and-int v8, p8, v8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1090
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000

    and-int v8, p8, v8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1092
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x80000

    and-int v8, p8, v8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1094
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x200000

    and-int v8, p8, v8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1096
    iget v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int v8, p8, v8

    or-int/2addr v6, v8

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 1098
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 1099
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 1101
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    array-length v9, v3

    array-length v10, v4

    if-ne v9, v10, :cond_8

    .line 1103
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1104
    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_5

    .line 1106
    :cond_8
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1107
    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1109
    :goto_5
    move-object/from16 v9, p12

    invoke-virtual {p0, v9}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 1110
    move-object/from16 v10, p13

    invoke-virtual {p0, v10}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    .line 1111
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2508
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2509
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2508
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    goto :goto_0

    .line 2510
    :catch_0
    move-exception v0

    .line 2511
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2418
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2420
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2423
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2424
    return-void
.end method

.method private writeMimeGroupLPr(Landroid/util/TypedXmlSerializer;Ljava/util/Map;)V
    .locals 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3842
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez p2, :cond_0

    .line 3843
    return-void

    .line 3846
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3847
    .local v1, "mimeGroup":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "mime-group"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3848
    const-string v4, "name"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3850
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3851
    .local v5, "mimeType":Ljava/lang/String;
    const-string v6, "mime-type"

    invoke-interface {p1, v2, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3852
    const-string v7, "value"

    invoke-interface {p1, v2, v7, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3853
    invoke-interface {p1, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3854
    .end local v5    # "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 3856
    :cond_1
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3857
    .end local v1    # "mimeGroup":Ljava/lang/String;
    goto :goto_0

    .line 3858
    :cond_2
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .locals 22
    .param p1, "creatingUserId"    # I

    .line 2539
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "PackageSettings"

    const-string v0, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2540
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2541
    .local v5, "userIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 2542
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v5, v6

    .line 2541
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2544
    .end local v6    # "i":I
    :cond_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 2545
    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2549
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2550
    .local v6, "tempFile":Ljava/io/File;
    new-instance v7, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2552
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    .line 2554
    .local v8, "writeTarget":Ljava/io/File;
    const/4 v9, 0x0

    .line 2556
    .local v9, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2557
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v9, v11

    .line 2558
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2560
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2561
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2563
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v15, 0x0

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 2565
    :cond_2
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2564
    invoke-static {v14, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v14

    .line 2565
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    :goto_2
    nop

    .line 2567
    .local v14, "dataPath":Ljava/lang/String;
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v15, :cond_e

    if-nez v14, :cond_3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    goto/16 :goto_a

    .line 2574
    :cond_3
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v15

    .line 2575
    .local v15, "isDebug":Z
    new-instance v17, Landroid/util/IntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/IntArray;-><init>()V

    move-object/from16 v18, v17

    .line 2576
    .local v18, "gids":Landroid/util/IntArray;
    array-length v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_3
    if-ge v4, v2, :cond_4

    :try_start_1
    aget v19, v5, v4

    move/from16 v20, v19

    .line 2577
    .local v20, "userId":I
    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v21, v5

    move/from16 v5, v20

    .end local v20    # "userId":I
    .local v5, "userId":I
    .local v21, "userIds":[I
    :try_start_2
    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    move-object/from16 v2, v18

    .end local v18    # "gids":Landroid/util/IntArray;
    .local v2, "gids":Landroid/util/IntArray;
    invoke-virtual {v2, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 2576
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move/from16 v2, v19

    move-object/from16 v5, v21

    goto :goto_3

    .line 2648
    .end local v2    # "gids":Landroid/util/IntArray;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    .end local v21    # "userIds":[I
    .local v5, "userIds":[I
    :catch_0
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "userIds":[I
    .restart local v21    # "userIds":[I
    goto/16 :goto_b

    .line 2582
    .end local v21    # "userIds":[I
    .restart local v5    # "userIds":[I
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    .restart local v15    # "isDebug":Z
    .restart local v18    # "gids":Landroid/util/IntArray;
    :cond_4
    move-object/from16 v21, v5

    move-object/from16 v2, v18

    .end local v5    # "userIds":[I
    .end local v18    # "gids":Landroid/util/IntArray;
    .restart local v2    # "gids":Landroid/util/IntArray;
    .restart local v21    # "userIds":[I
    const/16 v1, 0x20

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 2583
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    goto :goto_1

    .line 2605
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2606
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2609
    if-eqz v15, :cond_6

    const-string v1, " 1 "

    goto :goto_4

    :cond_6
    const-string v1, " 0 "

    :goto_4
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v1, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 2615
    .local v1, "gidsSize":I
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 2616
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2617
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_5
    if-ge v4, v1, :cond_7

    .line 2618
    const-string v5, ","

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    invoke-virtual {v2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2617
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v4    # "i":I
    :cond_7
    goto :goto_6

    .line 2622
    :cond_8
    const-string v4, "none"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    :goto_6
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "1"

    const-string v16, "0"

    if-eqz v4, :cond_9

    move-object v4, v5

    goto :goto_7

    :cond_9
    move-object/from16 v4, v16

    :goto_7
    :try_start_3
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move/from16 v19, v1

    move-object/from16 v18, v2

    .end local v1    # "gidsSize":I
    .end local v2    # "gids":Landroid/util/IntArray;
    .restart local v18    # "gids":Landroid/util/IntArray;
    .local v19, "gidsSize":I
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2628
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProfileable()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v5, v16

    :goto_8
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2632
    const-string v1, "@system"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2633
    :cond_b
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2634
    const-string v1, "@product"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2635
    :cond_c
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 2636
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2637
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2639
    :cond_d
    const-string v1, "@null"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    :goto_9
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2643
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    .end local v18    # "gids":Landroid/util/IntArray;
    .end local v19    # "gidsSize":I
    goto/16 :goto_1

    .line 2567
    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "userIds":[I
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "userIds":[I
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v4

    move-object/from16 v21, v5

    .line 2568
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userIds":[I
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "userIds":[I
    :goto_a
    const-string v1, "android"

    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to missing metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    goto/16 :goto_1

    .line 2568
    :cond_f
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    goto/16 :goto_1

    .line 2644
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "userIds":[I
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "userIds":[I
    :cond_10
    move-object/from16 v17, v4

    move-object/from16 v21, v5

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userIds":[I
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "userIds":[I
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 2645
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2646
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 2647
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2652
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_c

    .line 2648
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_b

    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "userIds":[I
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "userIds":[I
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    .line 2649
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userIds":[I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "userIds":[I
    :goto_b
    const-string v1, "Failed to write packages.list"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2650
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2651
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2653
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method


# virtual methods
.method addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .locals 2
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 3788
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3791
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3792
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3794
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3795
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3797
    :cond_2
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p5, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p8, "uid"    # I
    .param p9, "vc"    # J
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p14, "usesStaticLibraryNames"    # [J
    .param p16, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 834
    .local p15, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p8

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v15}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 835
    .local v12, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v18, 0x0

    if-eqz v12, :cond_1

    .line 836
    iget v1, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_0

    .line 837
    return-object v12

    .line 839
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 841
    return-object v18

    .line 843
    :cond_1
    new-instance v19, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, v19

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v20, v12

    .end local v12    # "p":Lcom/android/server/pm/PackageSetting;
    .local v20, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v12, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    .line 847
    .end local v20    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v2, p8

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 848
    move-object/from16 v3, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 849
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    return-object v1

    .line 852
    :cond_2
    return-object v18
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 857
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 858
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_0

    .line 859
    return-object v0

    .line 861
    :cond_0
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 863
    return-object v1

    .line 865
    :cond_1
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 866
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 867
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    return-object v0

    .line 871
    :cond_2
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .locals 21
    .param p1, "userId"    # I

    .line 3052
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3053
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 3054
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3055
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3056
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3057
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3058
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    .line 3059
    .local v6, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 3060
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3061
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    new-instance v9, Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/content/IntentFilter;

    invoke-direct {v9, v10}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V

    .line 3059
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3066
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    .end local v7    # "i":I
    :cond_0
    goto :goto_0

    .line 3069
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 3070
    .local v5, "size":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_2
    if-ge v7, v5, :cond_d

    .line 3071
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 3072
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/pm/PackageManagerService$ScanPartition;

    .line 3074
    .local v8, "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/preferred-apps"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 3075
    .local v9, "preferredDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3076
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_b

    .line 3079
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v10, " cannot be read"

    const-string v11, "PackageSettings"

    if-nez v0, :cond_3

    .line 3080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Directory "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_b

    .line 3085
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 3086
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3087
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_b

    .line 3090
    :cond_4
    array-length v13, v12

    const/4 v0, 0x0

    move v14, v0

    :goto_3
    if-ge v14, v13, :cond_b

    aget-object v15, v12, v14

    .line 3091
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, ".xml"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-xml file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " directory, ignoring"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_a

    .line 3096
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v6, "Preferred apps file "

    if-nez v0, :cond_6

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_a

    .line 3104
    :cond_6
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v0

    .line 3105
    .local v17, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3108
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    :goto_4
    move-object/from16 v18, v4

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v18, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :try_start_2
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v5    # "size":I
    .local v19, "type":I
    .local v20, "size":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    move/from16 v4, v19

    const/4 v5, 0x1

    .end local v19    # "type":I
    .local v4, "type":I
    if-eq v4, v5, :cond_8

    move-object/from16 v4, v18

    move/from16 v5, v20

    goto :goto_4

    .end local v4    # "type":I
    .restart local v19    # "type":I
    :cond_7
    move/from16 v4, v19

    const/4 v5, 0x1

    .line 3113
    .end local v19    # "type":I
    .restart local v4    # "type":I
    :cond_8
    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 3114
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not have start tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3123
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3115
    goto/16 :goto_a

    .line 3117
    :cond_9
    :try_start_5
    const-string v5, "preferred-activities"

    move/from16 v16, v4

    .end local v4    # "type":I
    .local v16, "type":I
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " does not start with \'preferred-activities\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3123
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3120
    goto :goto_a

    .line 3122
    :cond_a
    :try_start_7
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3123
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v16    # "type":I
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_9

    .line 3104
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_5

    .end local v20    # "size":I
    .restart local v5    # "size":I
    :catchall_1
    move-exception v0

    move/from16 v20, v5

    move-object v4, v0

    .end local v5    # "size":I
    .restart local v20    # "size":I
    goto :goto_5

    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object v4, v0

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    :goto_5
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "index":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local v9    # "preferredDir":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    .end local v15    # "f":Ljava/io/File;
    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .end local p0    # "this":Lcom/android/server/pm/Settings;
    .end local p1    # "userId":I
    :goto_6
    throw v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 3125
    .end local v17    # "str":Ljava/io/InputStream;
    .restart local v7    # "index":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v9    # "preferredDir":Ljava/io/File;
    .restart local v12    # "files":[Ljava/io/File;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    .restart local p0    # "this":Lcom/android/server/pm/Settings;
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_7

    .line 3123
    :catch_1
    move-exception v0

    goto :goto_8

    .line 3125
    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 3126
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 3123
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 3124
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3127
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_9
    nop

    .line 3090
    .end local v15    # "f":Ljava/io/File;
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v20

    const/4 v6, 0x1

    goto/16 :goto_3

    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :cond_b
    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    goto :goto_b

    .line 3075
    .end local v12    # "files":[Ljava/io/File;
    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :cond_c
    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 3070
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local v9    # "preferredDir":Ljava/io/File;
    .restart local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "size":I
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v20

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3130
    .end local v7    # "index":I
    .end local v18    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :cond_d
    return-void
.end method

.method clearBlockUninstallLPw(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1833
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 1834
    return-void
.end method

.method clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5712
    const/4 v0, 0x0

    .line 5713
    .local v0, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    const/4 v1, 0x0

    .line 5714
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 5715
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 5716
    .local v3, "thisUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 5717
    .local v4, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eq p2, v3, :cond_0

    .line 5718
    goto :goto_3

    .line 5720
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5721
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5722
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 5724
    .local v6, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5725
    if-nez v0, :cond_1

    .line 5726
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 5728
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5730
    .end local v6    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_2
    goto :goto_1

    .line 5731
    :cond_3
    if-eqz v0, :cond_5

    .line 5732
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 5733
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 5734
    .local v7, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 5732
    .end local v7    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5736
    .end local v6    # "j":I
    :cond_4
    const/4 v1, 0x1

    .line 5714
    .end local v3    # "thisUserId":I
    .end local v4    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5739
    .end local v2    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    .line 5740
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    .line 5742
    :cond_7
    return v1
.end method

.method clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outUserChanged"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 5675
    const/4 v0, 0x0

    .line 5676
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 5677
    .local v1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 5678
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 5679
    .local v3, "thisUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredIntentResolver;

    .line 5680
    .local v4, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    if-eq p3, v3, :cond_0

    .line 5681
    goto :goto_3

    .line 5683
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/PreferredIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5684
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5685
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 5688
    .local v6, "pa":Lcom/android/server/pm/PreferredActivity;
    if-eqz p1, :cond_1

    iget-object v7, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 5689
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v7, v7, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v7, :cond_3

    .line 5691
    :cond_1
    if-nez v1, :cond_2

    .line 5692
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 5694
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5696
    .end local v6    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_3
    goto :goto_1

    .line 5697
    :cond_4
    if-eqz v1, :cond_6

    .line 5698
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 5699
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    .line 5700
    .local v7, "pa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 5698
    .end local v7    # "pa":Lcom/android/server/pm/PreferredActivity;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5702
    .end local v6    # "j":I
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {p2, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5703
    const/4 v0, 0x1

    .line 5677
    .end local v3    # "thisUserId":I
    .end local v4    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5706
    .end local v2    # "i":I
    :cond_7
    if-eqz v0, :cond_8

    .line 5707
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    .line 5709
    :cond_8
    return-void
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .locals 22
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3975
    .local p4, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v12, v0

    .line 3977
    .local v12, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNewUser-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3978
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    move-object v13, v0

    .line 3979
    .local v13, "batch":Lcom/android/server/pm/Installer$Batch;
    if-nez v11, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v15, v2

    .line 3980
    .local v15, "skipPackageWhitelist":Z
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    .line 3981
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v7, v2

    .line 3982
    .local v7, "size":I
    const/4 v2, 0x0

    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_8

    .line 3983
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v6}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    move-object v5, v2

    .line 3984
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_1

    .line 3985
    move v14, v6

    move/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_5

    .line 3987
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3988
    move-object/from16 v4, p5

    :try_start_3
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3989
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 4013
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "i":I
    .end local v7    # "size":I
    :catchall_0
    move-exception v0

    move-object/from16 v4, p5

    goto/16 :goto_8

    .line 3987
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "i":I
    .restart local v7    # "size":I
    :cond_2
    move-object/from16 v4, p5

    .line 3989
    :cond_3
    const/4 v2, 0x0

    :goto_2
    move/from16 v16, v2

    .line 3990
    .local v16, "shouldMaybeInstall":Z
    if-eqz v16, :cond_5

    if-nez v15, :cond_4

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 3991
    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    move v3, v2

    .line 3993
    .local v3, "shouldReallyInstall":Z
    :try_start_4
    invoke-virtual {v5, v3, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3997
    if-eqz v16, :cond_6

    if-nez v3, :cond_6

    .line 3998
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 3999
    .local v2, "uninstallReason":I
    :goto_4
    invoke-virtual {v5, v2, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 4000
    if-eqz v3, :cond_7

    .line 4004
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v8, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v8

    .line 4005
    .local v8, "seInfo":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget-object v14, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "i":I
    .local v18, "i":I
    iget v6, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v19, v2

    .end local v2    # "uninstallReason":I
    .local v19, "uninstallReason":I
    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4007
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4005
    move-object v2, v13

    move/from16 v21, v3

    .end local v3    # "shouldReallyInstall":Z
    .local v21, "shouldReallyInstall":Z
    move-object v3, v0

    move-object v4, v14

    move-object v0, v5

    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v5, p3

    move/from16 v14, v18

    move/from16 v18, v6

    .end local v18    # "i":I
    .local v14, "i":I
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "size":I
    .local v17, "size":I
    move/from16 v7, v18

    move-object/from16 v18, v9

    move/from16 v9, v20

    :try_start_5
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer$Batch;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Ljava/util/concurrent/CompletableFuture;

    .line 4008
    nop

    .end local v8    # "seInfo":Ljava/lang/String;
    goto :goto_5

    .line 4010
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "i":I
    .end local v17    # "size":I
    .end local v19    # "uninstallReason":I
    .end local v21    # "shouldReallyInstall":Z
    .restart local v2    # "uninstallReason":I
    .restart local v3    # "shouldReallyInstall":Z
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "i":I
    .restart local v7    # "size":I
    :cond_7
    move/from16 v19, v2

    move/from16 v21, v3

    move-object v0, v5

    move v14, v6

    move/from16 v17, v7

    move-object/from16 v18, v9

    .end local v2    # "uninstallReason":I
    .end local v3    # "shouldReallyInstall":Z
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "i":I
    .end local v7    # "size":I
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "i":I
    .restart local v17    # "size":I
    .restart local v19    # "uninstallReason":I
    .restart local v21    # "shouldReallyInstall":Z
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 3982
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "shouldMaybeInstall":Z
    .end local v19    # "uninstallReason":I
    .end local v21    # "shouldReallyInstall":Z
    :goto_5
    add-int/lit8 v6, v14, 0x1

    move/from16 v7, v17

    move-object/from16 v9, v18

    .end local v14    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 4013
    .end local v6    # "i":I
    .end local v17    # "size":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_7

    .line 3982
    .restart local v6    # "i":I
    .restart local v7    # "size":I
    :cond_8
    move v14, v6

    move/from16 v17, v7

    move-object/from16 v18, v9

    .line 4013
    .end local v6    # "i":I
    .end local v7    # "size":I
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4014
    const-string v0, "createAppData"

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4016
    move-object/from16 v2, p2

    :try_start_6
    invoke-virtual {v13, v2}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4019
    goto :goto_6

    .line 4017
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 4018
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageSettings"

    const-string v4, "Failed to prepare app data"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4020
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4021
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 4022
    :try_start_7
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4023
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4024
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4025
    return-void

    .line 4023
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 4013
    :catchall_3
    move-exception v0

    :goto_7
    move-object/from16 v2, p2

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_8
    move-object/from16 v2, p2

    move-object/from16 v18, v9

    :goto_9
    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_9
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 773
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 774
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an installed package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return v1

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 780
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 782
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 784
    if-eqz p2, :cond_1

    .line 789
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .local v1, "disabled":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 791
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object v1, v0

    .line 793
    .restart local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    return v3

    .line 797
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v1
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 212
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 5174
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5175
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    const-string v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5176
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5177
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5178
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    const-string v1, "instrumentations:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5179
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            ">;)V"
        }
    .end annotation

    .line 5183
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedComponent;>;"
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 5184
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 5185
    return-void

    .line 5187
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5189
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedComponent;

    .line 5190
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedComponent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5191
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5188
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedComponent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5193
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5062
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5063
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5064
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5064
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5067
    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 5123
    .local p3, "filterPermissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 5124
    .local v3, "dumpPermissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 5125
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5126
    .local v6, "userId":I
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v7

    .line 5128
    .local v7, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5129
    .local v9, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v9}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5130
    goto :goto_1

    .line 5132
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v10

    .line 5133
    .local v10, "permissionName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5134
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 5135
    goto :goto_1

    .line 5137
    :cond_1
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5138
    .end local v9    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v10    # "permissionName":Ljava/lang/String;
    goto :goto_1

    .line 5139
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v7    # "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    :cond_2
    goto :goto_0

    .line 5140
    :cond_3
    const/4 v4, 0x0

    .line 5141
    .local v4, "printedSomething":Z
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5142
    .local v6, "permissionName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v8

    .line 5144
    .local v8, "systemPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 5145
    .local v10, "user":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5147
    .local v11, "userId":I
    if-nez v11, :cond_4

    .line 5148
    move-object v12, v8

    .local v12, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    goto :goto_4

    .line 5150
    .end local v12    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_4
    invoke-virtual {v2, v6, v11}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v12

    .line 5151
    .restart local v12    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-static {v12, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 5152
    goto :goto_3

    .line 5155
    :cond_5
    :goto_4
    if-nez v4, :cond_6

    .line 5156
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "install permissions:"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5157
    const/4 v4, 0x1

    .line 5159
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5160
    const-string v13, ": granted="

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v12, :cond_7

    .line 5161
    invoke-virtual {v12}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    move v13, v7

    .line 5160
    :goto_5
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 5162
    nop

    .line 5163
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v13

    goto :goto_6

    :cond_8
    move v13, v7

    .line 5162
    :goto_6
    const-string v14, ", flags="

    invoke-static {v14, v13}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5164
    if-nez v11, :cond_9

    .line 5165
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 5167
    :cond_9
    const-string v13, ", userId="

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 5169
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    .end local v11    # "userId":I
    .end local v12    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :goto_7
    goto :goto_3

    .line 5170
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v8    # "systemPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_a
    goto :goto_2

    .line 5171
    :cond_b
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p10, "dumpAll"    # Z
    .param p11, "dumpAllComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4379
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4380
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v9, :cond_e

    .line 4381
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4382
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4383
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4385
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4386
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4387
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4388
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4389
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4390
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4391
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4392
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4393
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_1

    .line 4394
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 4393
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4395
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 4395
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4397
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4398
    const-string v1, "-"

    if-eqz v13, :cond_3

    .line 4399
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "splt,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4400
    const-string v4, "base,"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4401
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4402
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4403
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v4

    .line 4404
    .local v4, "splitRevisionCodes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ge v5, v14, :cond_3

    .line 4405
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4406
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4407
    aget v14, v4, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 4404
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4411
    .end local v4    # "splitRevisionCodes":[I
    .end local v5    # "i":I
    :cond_3
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4412
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4414
    const-string v5, "usr"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4416
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4417
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4418
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "I"

    goto :goto_5

    :cond_4
    const-string v5, "i"

    :goto_5
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "B"

    goto :goto_6

    :cond_5
    const-string v5, "b"

    :goto_6
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4420
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "SU"

    goto :goto_7

    :cond_6
    const-string v5, "su"

    :goto_7
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4421
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "S"

    goto :goto_8

    :cond_7
    const-string v5, "s"

    :goto_8
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4422
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "l"

    goto :goto_9

    :cond_8
    const-string v5, "L"

    :goto_9
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4423
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "IA"

    goto :goto_a

    :cond_9
    const-string v5, "ia"

    :goto_a
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4424
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "VPI"

    goto :goto_b

    :cond_a
    const-string v5, "vpi"

    :goto_b
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4425
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 4426
    .local v5, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v5, :cond_b

    const-string v14, "HA"

    goto :goto_c

    :cond_b
    const-string v14, "ha"

    :goto_c
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4427
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4428
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4429
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v14

    .line 4430
    .local v14, "lastDisabledAppCaller":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4431
    if-eqz v14, :cond_c

    move-object v15, v14

    goto :goto_d

    :cond_c
    move-object v15, v2

    :goto_d
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4432
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4434
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "harmfulAppWarning":Ljava/lang/String;
    .end local v14    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_4

    .line 4435
    :cond_d
    return-void

    .line 4438
    :cond_e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4439
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_e

    :cond_f
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_e
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4440
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4441
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4442
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4444
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 4445
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4446
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4449
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4451
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_11

    .line 4452
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4454
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4455
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4456
    if-nez v10, :cond_13

    .line 4457
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4458
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4460
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  extractNativeLibs="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 4462
    const-string v0, "true"

    goto :goto_f

    :cond_12
    const-string v0, "false"

    .line 4461
    :goto_f
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4463
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4464
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4465
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  cpuAbiOverride="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4467
    :cond_13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4468
    const-string v0, "]"

    const-string v1, ", "

    if-eqz v13, :cond_16

    .line 4469
    const-string v2, " minSdk="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4470
    const-string v2, " targetSdk="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4472
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 4474
    .local v2, "minExtensionVersions":Landroid/util/SparseIntArray;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  minExtensionVersions=["

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4475
    if-eqz v2, :cond_15

    .line 4476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4477
    .local v3, "minExtVerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 4478
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_10
    if-ge v5, v4, :cond_14

    .line 4479
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 4480
    .local v14, "key":I
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 4481
    .local v15, "value":I
    move-object/from16 v16, v2

    .end local v2    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .local v16, "minExtensionVersions":Landroid/util/SparseIntArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v4

    .end local v4    # "size":I
    .local v17, "size":I
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4478
    .end local v14    # "key":I
    .end local v15    # "value":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v17

    goto :goto_10

    .end local v16    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v17    # "size":I
    .restart local v2    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .restart local v4    # "size":I
    :cond_14
    move-object/from16 v16, v2

    move/from16 v17, v4

    .line 4484
    .end local v2    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v4    # "size":I
    .end local v5    # "index":I
    .restart local v16    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .restart local v17    # "size":I
    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11

    .line 4475
    .end local v3    # "minExtVerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v17    # "size":I
    .restart local v2    # "minExtensionVersions":Landroid/util/SparseIntArray;
    :cond_15
    move-object/from16 v16, v2

    .line 4486
    .end local v2    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .restart local v16    # "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_11
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4488
    .end local v16    # "minExtensionVersions":Landroid/util/SparseIntArray;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4489
    const-string v14, "    "

    if-eqz v13, :cond_38

    .line 4490
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  versionName="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4491
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesNonSdkApi="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUsesNonSdkApi()Z

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4492
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  splits="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v13}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4493
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4494
    .local v2, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  apkSigningVersion="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  applicationInfo="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4496
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4497
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  flags="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4498
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v3

    sget-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4499
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v3

    .line 4500
    .local v3, "privateFlags":I
    if-eqz v3, :cond_17

    .line 4501
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  privateFlags="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4502
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4504
    :cond_17
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4505
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4506
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4508
    :cond_18
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  forceQueryable="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4509
    iget-boolean v4, v11, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v4, :cond_19

    .line 4510
    const-string v4, " (override=true)"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4512
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4513
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4514
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "  queriesPackages="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4516
    :cond_1a
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 4517
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "  queriesIntents="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4519
    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v13, v4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v4

    .line 4520
    .local v4, "dataDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dataDir="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4521
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  supportsScreens=["

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4522
    const/4 v5, 0x1

    .line 4523
    .local v5, "first":Z
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsSmallScreens()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 4524
    if-nez v5, :cond_1c

    .line 4525
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4526
    :cond_1c
    const/4 v5, 0x0

    .line 4527
    const-string v15, "small"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4529
    :cond_1d
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsNormalScreens()Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 4530
    if-nez v5, :cond_1e

    .line 4531
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    :cond_1e
    const/4 v5, 0x0

    .line 4533
    const-string v15, "medium"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4535
    :cond_1f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsLargeScreens()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 4536
    if-nez v5, :cond_20

    .line 4537
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4538
    :cond_20
    const/4 v5, 0x0

    .line 4539
    const-string v15, "large"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4541
    :cond_21
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsExtraLargeScreens()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 4542
    if-nez v5, :cond_22

    .line 4543
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4544
    :cond_22
    const/4 v5, 0x0

    .line 4545
    const-string v15, "xlarge"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4547
    :cond_23
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isResizeable()Z

    move-result v15

    if-eqz v15, :cond_25

    .line 4548
    if-nez v5, :cond_24

    .line 4549
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4550
    :cond_24
    const/4 v5, 0x0

    .line 4551
    const-string v15, "resizeable"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    :cond_25
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v15

    if-eqz v15, :cond_27

    .line 4554
    if-nez v5, :cond_26

    .line 4555
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    :cond_26
    const/4 v5, 0x0

    .line 4557
    const-string v1, "anyDensity"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4559
    :cond_27
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    .line 4561
    .local v0, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 4562
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dynamic libraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v1, v15, :cond_28

    .line 4564
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4565
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4568
    .end local v1    # "i":I
    :cond_28
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    const-string v15, " version:"

    if-eqz v1, :cond_29

    .line 4569
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  static library:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    const-string v1, "name:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .end local v0    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_13

    .line 4568
    .end local v16    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v16, v0

    .line 4575
    .end local v0    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 4576
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 4577
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4578
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    move/from16 v17, v2

    .end local v2    # "apkSigningVersion":I
    .local v17, "apkSigningVersion":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 4579
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4578
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    goto :goto_14

    .line 4576
    .end local v1    # "i":I
    .end local v17    # "apkSigningVersion":I
    .restart local v2    # "apkSigningVersion":I
    :cond_2a
    move/from16 v17, v2

    .line 4583
    .end local v2    # "apkSigningVersion":I
    .restart local v17    # "apkSigningVersion":I
    :cond_2b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    .line 4584
    .local v1, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 4585
    .local v2, "usesStaticLibrariesVersions":[J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_2d

    .line 4586
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v18, v0

    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "  usesStaticLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    move/from16 v19, v3

    .end local v3    # "privateFlags":I
    .local v19, "privateFlags":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 4588
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4589
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    move-object/from16 v20, v4

    .end local v4    # "dataDir":Ljava/io/File;
    .local v20, "dataDir":Ljava/io/File;
    aget-wide v3, v2, v0

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 4587
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_15

    .end local v20    # "dataDir":Ljava/io/File;
    .restart local v4    # "dataDir":Ljava/io/File;
    :cond_2c
    move-object/from16 v20, v4

    .end local v4    # "dataDir":Ljava/io/File;
    .restart local v20    # "dataDir":Ljava/io/File;
    goto :goto_16

    .line 4585
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "privateFlags":I
    .end local v20    # "dataDir":Ljava/io/File;
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "privateFlags":I
    .restart local v4    # "dataDir":Ljava/io/File;
    :cond_2d
    move-object/from16 v18, v0

    move/from16 v19, v3

    move-object/from16 v20, v4

    .line 4594
    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "privateFlags":I
    .end local v4    # "dataDir":Ljava/io/File;
    .restart local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "privateFlags":I
    .restart local v20    # "dataDir":Ljava/io/File;
    :goto_16
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 4595
    .local v0, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2e

    .line 4596
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  usesOptionalLibraries:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 4598
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4597
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 4603
    .end local v3    # "i":I
    :cond_2e
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v3

    .line 4604
    .local v3, "usesNativeLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 4605
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesNativeLibraries:"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4606
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_2f

    .line 4607
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4606
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 4611
    .end local v4    # "i":I
    :cond_2f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v4

    .line 4612
    .local v4, "usesOptionalNativeLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_30

    .line 4613
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "  usesOptionalNativeLibraries:"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4614
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_19
    move-object/from16 v21, v0

    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_31

    .line 4615
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4616
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4614
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v21

    goto :goto_19

    .line 4612
    .end local v15    # "i":I
    .end local v21    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    move-object/from16 v21, v0

    .line 4620
    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 4621
    .local v0, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_32

    .line 4622
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "  usesLibraryFiles:"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1a
    move-object/from16 v22, v1

    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_33

    .line 4624
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v22

    goto :goto_1a

    .line 4621
    .end local v15    # "i":I
    .end local v22    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    move-object/from16 v22, v1

    .line 4627
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v1

    .line 4628
    .local v1, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_37

    .line 4629
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "  processes:"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_36

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 4631
    .local v23, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v24, v0

    .end local v0    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4632
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 4633
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    .line 4634
    .local v0, "deniedPermission":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v25, v1

    .end local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .local v25, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    const-string v1, "      deny: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4636
    .end local v0    # "deniedPermission":Ljava/lang/String;
    move-object/from16 v1, v25

    move-object/from16 v0, v26

    goto :goto_1c

    .line 4633
    .end local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .restart local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    :cond_34
    move-object/from16 v25, v1

    .end local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .restart local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    goto :goto_1d

    .line 4632
    .end local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .restart local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    :cond_35
    move-object/from16 v25, v1

    .line 4638
    .end local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .end local v23    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    .restart local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    :goto_1d
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    goto :goto_1b

    .line 4630
    .end local v24    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .local v0, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    :cond_36
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    .end local v0    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .restart local v24    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    goto :goto_1e

    .line 4628
    .end local v24    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .restart local v0    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    :cond_37
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    .line 4641
    .end local v0    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .end local v2    # "usesStaticLibrariesVersions":[J
    .end local v3    # "usesNativeLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "usesOptionalNativeLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "first":Z
    .end local v16    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "apkSigningVersion":I
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "privateFlags":I
    .end local v20    # "dataDir":Ljava/io/File;
    .end local v21    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    :goto_1e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4642
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4643
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4645
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4646
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4647
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4648
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4649
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4650
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 4651
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4652
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4654
    :cond_39
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 4655
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerAttributionTag="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4656
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4658
    :cond_3a
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->isPackageLoading()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4659
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  loadingProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4660
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getIncrementalStates()Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4659
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    :cond_3b
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 4663
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4664
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    :cond_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4667
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4668
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4669
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4670
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4671
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4673
    if-eqz v13, :cond_3d

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 4674
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4675
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    :cond_3d
    if-eqz v13, :cond_42

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 4679
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 4680
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4681
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 4682
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 4683
    .local v2, "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    if-eqz v10, :cond_3e

    .line 4684
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 4685
    goto :goto_20

    .line 4687
    :cond_3e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4688
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4689
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4690
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3f

    .line 4691
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4693
    :cond_3f
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_40

    .line 4694
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4696
    :cond_40
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_41

    .line 4697
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    :cond_41
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4681
    .end local v2    # "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 4703
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    .end local v1    # "i":I
    :cond_42
    if-nez v10, :cond_43

    if-eqz p10, :cond_45

    :cond_43
    if-eqz v13, :cond_45

    .line 4704
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 4705
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 4706
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 4707
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 4709
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4710
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_44

    .line 4711
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 4712
    goto :goto_22

    .line 4714
    :cond_44
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    .end local v2    # "perm":Ljava/lang/String;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4718
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_45
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v15, "  "

    if-eqz v0, :cond_46

    if-nez v10, :cond_46

    if-eqz p10, :cond_47

    .line 4719
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 4722
    :cond_47
    if-eqz p11, :cond_48

    .line 4723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 4726
    :cond_48
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_23
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4727
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4728
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4729
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4730
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4732
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4733
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4734
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4736
    const-string v0, " distractionFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4738
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4740
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4741
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4742
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4743
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4744
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4745
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4746
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4747
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4749
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4750
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4751
    const-string v0, "  Suspend params:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4753
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 4754
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4755
    const-string v2, "    suspendingPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 4758
    .local v2, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v2, :cond_49

    .line 4759
    const-string v3, " dialogInfo="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4760
    iget-object v3, v2, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4762
    :cond_49
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4753
    .end local v2    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 4766
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    .end local v1    # "i":I
    :cond_4a
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v16

    .line 4767
    .local v16, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    const-string v4, "      "

    if-eqz v16, :cond_4c

    .line 4768
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 4769
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4770
    const-string v0, "    overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4772
    .local v1, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4774
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_25

    .line 4777
    :cond_4b
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 4778
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4779
    const-string v0, "    legacy overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4781
    .restart local v1    # "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4782
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4784
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_26

    .line 4788
    :cond_4c
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4789
    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPathsForLibrary(I)Ljava/util/Map;

    move-result-object v17

    .line 4790
    .local v17, "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    if-eqz v17, :cond_51

    .line 4792
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4793
    .local v1, "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 4794
    .local v2, "paths":Landroid/content/pm/overlay/OverlayPaths;
    if-nez v2, :cond_4d

    .line 4795
    goto :goto_27

    .line 4797
    :cond_4d
    invoke-virtual {v2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 4798
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4799
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4800
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    const-string v3, " overlay paths:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4802
    invoke-virtual {v2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    .line 4803
    .local v0, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4804
    move-object/from16 v18, v3

    const-string v3, "        "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4805
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4806
    .end local v0    # "path":Ljava/lang/String;
    move-object/from16 v3, v18

    move-object/from16 v0, v19

    goto :goto_28

    .line 4802
    :cond_4e
    move-object/from16 v19, v0

    goto :goto_29

    .line 4797
    :cond_4f
    move-object/from16 v19, v0

    .line 4808
    :goto_29
    invoke-virtual {v2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 4809
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4810
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    const-string v0, " legacy overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    invoke-virtual {v2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4814
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4815
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_2a

    .line 4819
    .end local v1    # "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    .end local v2    # "paths":Landroid/content/pm/overlay/OverlayPaths;
    :cond_50
    move-object/from16 v0, v19

    goto/16 :goto_27

    .line 4822
    :cond_51
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 4823
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v3, :cond_52

    .line 4824
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    :cond_52
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_53

    .line 4829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v18, v3

    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v18, "lastDisabledAppCaller":Ljava/lang/String;
    iget v3, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 4830
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 4829
    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4832
    move-object/from16 v3, p6

    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v19

    .line 4831
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object v6, v4

    move-object/from16 v4, v19

    move-object v8, v5

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v8, "user":Landroid/content/pm/UserInfo;
    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_2b

    .line 4828
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_53
    move-object/from16 v18, v3

    move-object v6, v4

    move-object v8, v5

    .line 4835
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    .restart local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_2b
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4836
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 4837
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4841
    :cond_54
    if-nez v10, :cond_56

    .line 4842
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4843
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_55

    .line 4844
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4846
    .local v3, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4847
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_2c

    .line 4849
    :cond_55
    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4850
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 4851
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4853
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_2d

    .line 4857
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    .end local v17    # "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_56
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    goto/16 :goto_23

    .line 4858
    :cond_57
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4862
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4863
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 4864
    .local v8, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 4865
    .local v0, "printedSomething":Z
    nop

    .line 4866
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v21

    .line 4867
    .local v21, "dumpAllComponents":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v22

    .line 4868
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 4869
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4870
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4871
    goto :goto_0

    .line 4873
    :cond_0
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v5, v10, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 4874
    invoke-interface {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v9

    .line 4875
    .local v9, "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    if-eqz v12, :cond_1

    .line 4876
    invoke-virtual {v9, v12}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4877
    goto :goto_0

    .line 4880
    :cond_1
    if-nez p5, :cond_2

    if-eqz v13, :cond_2

    .line 4881
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4884
    :cond_2
    if-nez p5, :cond_4

    if-nez v0, :cond_4

    .line 4885
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4886
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4887
    :cond_3
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4888
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    .line 4890
    :cond_4
    move/from16 v17, v0

    .end local v0    # "printedSomething":Z
    .local v17, "printedSomething":Z
    :goto_1
    if-eqz p5, :cond_5

    const-string v0, "pkg"

    move-object v4, v0

    :cond_5
    if-eqz v13, :cond_6

    move/from16 v18, v2

    goto :goto_2

    :cond_6
    move/from16 v18, v3

    :goto_2
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v10

    move-object v6, v9

    move-object/from16 v19, v9

    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    .local v19, "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    move-object/from16 v9, v22

    move-object/from16 v20, v10

    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v20, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v10, v18

    move/from16 v11, v21

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4892
    .end local v19    # "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    .end local v20    # "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v11, p4

    move/from16 v0, v17

    goto :goto_0

    .line 4894
    .end local v17    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_7
    const/4 v0, 0x0

    .line 4895
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v12, :cond_d

    .line 4896
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4897
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4898
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4899
    goto :goto_3

    .line 4901
    :cond_8
    if-nez p5, :cond_b

    .line 4902
    if-nez v0, :cond_a

    .line 4903
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4904
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4905
    :cond_9
    const-string v6, "Renamed packages:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4906
    const/4 v0, 0x1

    .line 4908
    :cond_a
    const-string v6, "  "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 4910
    :cond_b
    const-string v6, "ren,"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4912
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    if-eqz p5, :cond_c

    const-string v6, " -> "

    goto :goto_5

    :cond_c
    const-string v6, ","

    :goto_5
    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4914
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 4918
    :cond_d
    const/4 v0, 0x0

    .line 4919
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    if-nez v12, :cond_13

    .line 4920
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4921
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_e

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4922
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 4923
    goto :goto_6

    .line 4925
    :cond_e
    if-nez p5, :cond_10

    if-nez v0, :cond_10

    .line 4926
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4927
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4928
    :cond_f
    const-string v6, "Hidden system packages:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    const/4 v0, 0x1

    .line 4931
    :cond_10
    iget-object v6, v15, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v9, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 4932
    invoke-interface {v6, v9}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    .line 4933
    .local v6, "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    if-eqz p5, :cond_11

    const-string v9, "dis"

    move-object/from16 v16, v9

    goto :goto_7

    :cond_11
    move-object/from16 v16, v4

    :goto_7
    if-eqz v13, :cond_12

    move/from16 v19, v2

    goto :goto_8

    :cond_12
    move/from16 v19, v3

    :goto_8
    const-string v11, "  "

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, v16

    move-object/from16 v13, p3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v22

    move/from16 v20, v21

    invoke-virtual/range {v9 .. v20}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4935
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    goto :goto_6

    .line 4937
    :cond_13
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4940
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 4942
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 4943
    .local v7, "count":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 4944
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 4945
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v3, 0x20b00000005L

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    move-object v1, v9

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 4943
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4947
    .end local v8    # "i":I
    :cond_0
    return-void
.end method

.method dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 4951
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 4952
    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissions()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 4953
    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v5

    .line 4951
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/Map;ZLcom/android/server/pm/DumpState;)V

    .line 4954
    return-void
.end method

.method dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5780
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredIntentResolver;

    .line 5781
    .local v1, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v9

    .line 5782
    .local v9, "user":I
    nop

    .line 5783
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    .line 5784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nPreferred Activities User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 5785
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred Activities User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5782
    const-string v5, "  "

    move-object v2, v1

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PreferredIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5787
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 5779
    .end local v1    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v9    # "user":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5790
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5032
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5034
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5071
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    const/4 v0, 0x0

    .line 5072
    .local v0, "hasRuntimePermissions":Z
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5073
    .local v2, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5074
    const/4 v0, 0x1

    .line 5075
    goto :goto_1

    .line 5077
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_0
    goto :goto_0

    .line 5078
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz p5, :cond_5

    .line 5079
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "runtime permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5080
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5081
    .restart local v2    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5082
    goto :goto_2

    .line 5084
    :cond_3
    if-eqz p3, :cond_4

    .line 5085
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5086
    goto :goto_2

    .line 5088
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5089
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5090
    nop

    .line 5091
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v3

    .line 5090
    const-string v4, ", flags="

    invoke-static {v4, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5092
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    goto :goto_2

    .line 5094
    :cond_5
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4958
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 4959
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 4960
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_0

    .line 4961
    goto :goto_0

    .line 4963
    :cond_0
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v2, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 4964
    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v11

    .line 4965
    .local v11, "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    if-eqz v8, :cond_1

    .line 4966
    invoke-virtual {v11, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4967
    goto :goto_0

    .line 4969
    :cond_1
    if-nez p5, :cond_b

    .line 4970
    if-nez v0, :cond_3

    .line 4971
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4972
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4973
    :cond_2
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    const/4 v0, 0x1

    move v12, v0

    goto :goto_1

    .line 4970
    :cond_3
    move v12, v0

    .line 4977
    .end local v0    # "printedSomething":Z
    .local v12, "printedSomething":Z
    :goto_1
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4978
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4979
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4980
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    const-string v13, "    "

    .line 4984
    .local v13, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4986
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 4988
    .local v14, "numPackages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const-string v15, "  "

    if-ge v0, v14, :cond_5

    .line 4989
    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4990
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4

    .line 4991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4993
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "NULL?!"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4997
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x4

    move-object/from16 v5, p4

    invoke-virtual {v5, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4998
    move v0, v12

    goto/16 :goto_0

    .line 5001
    :cond_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v16

    .line 5003
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 5005
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 5006
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5007
    .local v4, "userId":I
    iget-object v0, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v3

    .line 5009
    .local v3, "gids":[I
    nop

    .line 5010
    invoke-virtual {v11, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v18

    .line 5011
    .local v18, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5012
    :cond_7
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v3}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v3

    .end local v3    # "gids":[I
    .local v20, "gids":[I
    move-object/from16 v3, p3

    move/from16 v21, v4

    .end local v4    # "userId":I
    .local v21, "userId":I
    move-object/from16 v4, v18

    move-object/from16 v22, v5

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v22, "user":Landroid/content/pm/UserInfo;
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    .line 5017
    .end local v18    # "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    .end local v20    # "gids":[I
    .end local v21    # "userId":I
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_9
    goto :goto_4

    .line 5018
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "numPackages":I
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a
    move v0, v12

    goto :goto_6

    .line 5019
    .end local v12    # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_b
    const-string v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v11    # "permissionsState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :goto_6
    goto/16 :goto_0

    .line 5022
    :cond_c
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5025
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 5026
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5027
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5029
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4353
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4355
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4356
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4357
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4358
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4359
    :cond_0
    const-string v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4360
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4362
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4365
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sdkVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4366
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "databaseVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4367
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4368
    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v4, "fingerprint"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4369
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4370
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4354
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4372
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4373
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1342
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1343
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    .line 1344
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1345
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1347
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1334
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1335
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1336
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1338
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1324
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1325
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1326
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1327
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1329
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    .line 801
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 802
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x0

    return-object v2

    .line 806
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 807
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v9, v15, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v11, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v12, v15, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v13, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    move-object/from16 v17, v15

    .end local v15    # "p":Lcom/android/server/pm/PackageSetting;
    .local v17, "p":Lcom/android/server/pm/PackageSetting;
    move-object v15, v0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 812
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v16

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 813
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 816
    :cond_1
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1409
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1410
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    .line 1411
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1412
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4164
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4165
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4168
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4166
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1837
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1838
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1839
    const/4 v1, 0x0

    return v1

    .line 1841
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4173
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4174
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4175
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4178
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4179
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4176
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 1
    .param p1, "userId"    # I

    .line 5669
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object v0
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1397
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result v0

    return v0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "enabledPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 4130
    if-nez p1, :cond_0

    .line 4131
    const/4 v0, 0x0

    return-object v0

    .line 4133
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4120
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4121
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    const-string v1, "primary_physical"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4227
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4228
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4231
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4229
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1418
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 1
    .param p1, "userId"    # I

    .line 5660
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object v0
.end method

.method getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 1
    .param p1, "userId"    # I

    .line 5664
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 3
    .param p1, "appId"    # I

    .line 1292
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 1294
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1295
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SettingBase;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1297
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingBase;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 754
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 755
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 756
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 757
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 759
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 765
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 4105
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 4106
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4108
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4111
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4286
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4287
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4288
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4286
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4292
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1172
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1177
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    .line 1178
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1180
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 1181
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 3
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4137
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4138
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4140
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4141
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method public isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "component"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 4147
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4148
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4150
    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4151
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/content/pm/PackageUserState;->isMatch(ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4155
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4156
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4159
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-boolean v1, v1, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    return v1

    .line 4157
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isPermissionUpgradeNeededLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1389
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result v0

    return v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method protected onChanged()V
    .locals 0

    .line 217
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 218
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    return-void
.end method

.method pruneSharedUsersLPw()V
    .locals 8

    .line 875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 877
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 878
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_0

    .line 879
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    goto :goto_0

    .line 883
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 884
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 885
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 886
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 888
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    goto :goto_1

    .line 889
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 890
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_3
    goto :goto_0

    .line 893
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 894
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 896
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method readBlockUninstallPackagesLPw(Landroid/util/TypedXmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1537
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1539
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1540
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1541
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1542
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1543
    goto :goto_0

    .line 1545
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1547
    const/4 v4, 0x0

    const-string v5, "packageName"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1548
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1549
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1550
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1552
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1553
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1555
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1556
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1557
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    goto :goto_2

    .line 1559
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    :goto_2
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1515
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1516
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1517
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1518
    goto :goto_0

    .line 1520
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1521
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1522
    const/4 v3, 0x0

    const-string v4, "packageName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1523
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1524
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_3
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1527
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1530
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1532
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1533
    :cond_5
    return-void
.end method

.method readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 11
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2121
    .local p3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 2123
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 2125
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 2126
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2128
    goto :goto_0

    .line 2130
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2132
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2133
    .local v5, "name":Ljava/lang/String;
    const-string v6, "granted"

    invoke-interface {p1, v4, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2134
    .local v3, "granted":Z
    const-string v6, "flags"

    const/4 v7, 0x0

    invoke-interface {p1, v4, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2135
    .local v4, "flags":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2136
    .local v8, "user":Landroid/content/pm/UserInfo;
    new-instance v9, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v9, v5, v7, v3, v4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v9, v10}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 2138
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 2139
    .end local v3    # "granted":Z
    .end local v4    # "flags":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 2140
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <permissions>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2140
    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2144
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 2145
    :cond_5
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2815
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "No start tag found in package manager settings"

    const/4 v4, 0x0

    .line 2816
    .local v4, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v5, 0x4

    const-string v6, "PackageManager"

    if-eqz v0, :cond_1

    .line 2818
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 2819
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v7, "Reading from backup settings file\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const-string v0, "Need to read from backup settings file"

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2822
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up settings file "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    :cond_0
    goto :goto_0

    .line 2830
    :catch_0
    move-exception v0

    .line 2835
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 2836
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 2837
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 2838
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 2841
    const-string v7, "primary_physical"

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_3

    .line 2842
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2843
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No settings file found\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    const-string v0, "No settings file; creating initial state"

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2848
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2849
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2850
    return v10

    .line 2852
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 2854
    :cond_3
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    move-object v11, v0

    .line 2857
    .local v11, "parser":Landroid/util/TypedXmlPullParser;
    :goto_1
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const/4 v13, 0x2

    if-eq v0, v13, :cond_4

    if-eq v12, v9, :cond_4

    goto :goto_1

    .line 2862
    :cond_4
    if-eq v12, v13, :cond_5

    .line 2863
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No start tag found in settings file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const/4 v0, 0x5

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2866
    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    return v10

    .line 2871
    :cond_5
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    move v3, v0

    .line 2872
    .local v3, "outerDepth":I
    :goto_2
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v12, v0

    if-eq v0, v9, :cond_1d

    const/4 v0, 0x3

    if-ne v12, v0, :cond_6

    .line 2873
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v3, :cond_1d

    .line 2874
    :cond_6
    if-eq v12, v0, :cond_1c

    if-ne v12, v5, :cond_7

    .line 2875
    goto/16 :goto_5

    .line 2878
    :cond_7
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2879
    .local v13, "tagName":Ljava/lang/String;
    const-string v0, "package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2880
    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/Settings;->readPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_4

    .line 2881
    :cond_8
    const-string v0, "permissions"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2882
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_4

    .line 2883
    :cond_9
    const-string v0, "permission-trees"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2884
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_4

    .line 2885
    :cond_a
    const-string v0, "shared-user"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2886
    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_4

    .line 2887
    :cond_b
    const-string v0, "preferred-packages"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_4

    .line 2889
    :cond_c
    const-string v0, "preferred-activities"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2892
    invoke-virtual {v1, v11, v10}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V

    goto/16 :goto_4

    .line 2893
    :cond_d
    const-string v0, "persistent-preferred-activities"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2896
    invoke-direct {v1, v11, v10}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V

    goto/16 :goto_4

    .line 2897
    :cond_e
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2900
    invoke-direct {v1, v11, v10}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V

    goto/16 :goto_4

    .line 2901
    :cond_f
    const-string v0, "default-browser"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2902
    invoke-virtual {v1, v11, v10}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_4

    .line 2903
    :cond_10
    const-string v0, "updated-package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2904
    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_4

    .line 2905
    :cond_11
    const-string v0, "renamed-package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_13

    .line 2906
    const-string v0, "new"

    invoke-interface {v11, v14, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2907
    .local v0, "nname":Ljava/lang/String;
    const-string v15, "old"

    invoke-interface {v11, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2908
    .local v14, "oname":Ljava/lang/String;
    if-eqz v0, :cond_12

    if-eqz v14, :cond_12

    .line 2909
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v0, v14}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    .end local v0    # "nname":Ljava/lang/String;
    .end local v14    # "oname":Ljava/lang/String;
    :cond_12
    goto/16 :goto_4

    :cond_13
    const-string v0, "last-platform-version"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v15, "fingerprint"

    const-string v5, "external"

    const-string v9, "internal"

    if-eqz v0, :cond_14

    .line 2913
    :try_start_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 2915
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v16

    move-object/from16 v17, v16

    .line 2918
    .local v17, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-interface {v11, v14, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2919
    invoke-interface {v11, v14, v5, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v9, v17

    .end local v17    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .local v9, "external":Lcom/android/server/pm/Settings$VersionInfo;
    iput v5, v9, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2920
    nop

    .line 2921
    invoke-static {v11, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2923
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v9    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_4

    :cond_14
    const-string v0, "database-version"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2925
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 2927
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v15

    .line 2930
    .local v15, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-interface {v11, v14, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2931
    invoke-interface {v11, v14, v5, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v15, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2933
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v15    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_4

    :cond_15
    const-string v0, "verifier"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2934
    const-string v0, "device"

    invoke-interface {v11, v14, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v0

    .line 2936
    .local v5, "deviceIdentity":Ljava/lang/String;
    :try_start_3
    invoke-static {v5}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2940
    goto :goto_3

    .line 2937
    :catch_1
    move-exception v0

    .line 2938
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Discard invalid verifier device id: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2938
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2941
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "deviceIdentity":Ljava/lang/String;
    :cond_16
    const-string v0, "read-external-storage"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_3
    goto/16 :goto_4

    .line 2943
    :cond_17
    const-string v0, "keyset-settings"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2944
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Landroid/util/TypedXmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_4

    .line 2945
    :cond_18
    const-string v0, "version"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2946
    const-string v0, "volumeUuid"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2948
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    .line 2949
    .local v5, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string v9, "sdkVersion"

    invoke-interface {v11, v14, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2950
    const-string v9, "databaseVersion"

    invoke-interface {v11, v14, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2951
    invoke-static {v11, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2952
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v5    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_4

    :cond_19
    const-string v0, "domain-verifications"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2953
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readSettings(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    .line 2954
    :cond_1a
    const-string v0, "domain-verifications-legacy"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2956
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readLegacySettings(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    .line 2958
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2958
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2962
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_4
    nop

    .line 2872
    :cond_1c
    :goto_5
    const/4 v5, 0x4

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 2964
    :cond_1d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2969
    .end local v3    # "outerDepth":I
    .end local v11    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v12    # "type":I
    goto :goto_6

    .line 2965
    :catch_2
    move-exception v0

    .line 2966
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2968
    const-string v3, "Error reading package manager settings"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2982
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 2984
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_20

    .line 2985
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2986
    .local v5, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v6

    .line 2987
    .local v6, "sharedUserId":I
    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 2988
    .local v7, "idObj":Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v9, :cond_1e

    .line 2989
    move-object v9, v7

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    .line 2990
    .local v9, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v9, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 2991
    iget v11, v9, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v11, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2992
    invoke-direct {v1, v5, v9}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 2993
    .end local v9    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_8

    :cond_1e
    const-string v9, " has shared uid "

    const-string v11, "Bad package setting: package "

    if-eqz v7, :cond_1f

    .line 2994
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " that is not a shared uid\n"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2996
    .local v9, "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2998
    .end local v9    # "msg":Ljava/lang/String;
    goto :goto_8

    .line 2999
    :cond_1f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " that is not defined\n"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3001
    .restart local v9    # "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2984
    .end local v5    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "sharedUserId":I
    .end local v7    # "idObj":Ljava/lang/Object;
    .end local v9    # "msg":Ljava/lang/String;
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3005
    .end local v3    # "i":I
    :cond_20
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3007
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3008
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_a

    .line 3016
    :cond_21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3017
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3018
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    goto :goto_9

    .line 3010
    :cond_22
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3011
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3012
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3014
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3021
    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3022
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3023
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 3029
    :cond_24
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3030
    .local v3, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3031
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3032
    .local v5, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v6, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    .line 3033
    .local v6, "id":Ljava/lang/Object;
    if-eqz v6, :cond_25

    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_25

    .line 3034
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    iput-object v7, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3036
    .end local v5    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "id":Ljava/lang/Object;
    :cond_25
    goto :goto_c

    .line 3038
    :cond_26
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read completed successfully: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 3039
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shared uids\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3038
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3043
    const/4 v5, 0x1

    return v5
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 55
    .param p1, "userId"    # I

    .line 1567
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string v13, "suspending-package"

    const-string v12, "pkg"

    const/4 v2, 0x0

    .line 1568
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v15

    .line 1569
    .local v15, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1570
    .local v14, "backupFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v10, 0x4

    const-string v11, "PackageManager"

    if-eqz v0, :cond_1

    .line 1572
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1573
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1576
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :cond_0
    move-object/from16 v23, v2

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_0

    .line 1570
    :cond_1
    move-object/from16 v23, v2

    .line 1590
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v23, "str":Ljava/io/FileInputStream;
    :goto_0
    const-string v9, "Error reading package manager stopped packages"

    const/4 v8, 0x6

    const-string v7, "Error reading: "

    if-nez v23, :cond_4

    .line 1591
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_3

    .line 1592
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1600
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1601
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v13, v7

    move v7, v10

    const/4 v10, 0x0

    move v12, v8

    move v8, v10

    move-object/from16 v24, v9

    move v9, v10

    const/16 v16, 0x0

    move-object/from16 v25, v11

    move/from16 v11, v16

    move/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v26, v13

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v27, v14

    .end local v14    # "backupFile":Ljava/io/File;
    .local v27, "backupFile":Ljava/io/File;
    move/from16 v14, v16

    move-object/from16 v28, v15

    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v28, "userPackagesStateFile":Ljava/io/File;
    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-virtual/range {v2 .. v22}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1618
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v3, p1

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v7, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    const/4 v8, 0x6

    goto :goto_1

    .line 1808
    :catch_1
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v6, v25

    move-object/from16 v25, v28

    goto/16 :goto_1d

    .line 1801
    :catch_2
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move-object/from16 v25, v28

    const/4 v4, 0x6

    goto/16 :goto_1e

    .line 1619
    .end local v27    # "backupFile":Ljava/io/File;
    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_2
    return-void

    .line 1808
    :catch_3
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v27, v14

    move/from16 v3, p1

    move-object v6, v11

    move-object/from16 v25, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    .restart local v28    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1801
    .end local v27    # "backupFile":Ljava/io/File;
    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v27, v14

    move/from16 v3, p1

    move-object v5, v7

    move v4, v8

    move-object v2, v9

    move-object v6, v11

    move-object/from16 v25, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    .restart local v28    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1e

    .line 1621
    .end local v27    # "backupFile":Ljava/io/File;
    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_3
    move-object/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    .restart local v28    # "userPackagesStateFile":Ljava/io/File;
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v3, v28

    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    :try_start_5
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v23, v0

    goto/16 :goto_4

    .line 1808
    :catch_5
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    :goto_2
    move/from16 v3, p1

    goto/16 :goto_1d

    .line 1801
    :catch_6
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    const/4 v4, 0x6

    move-object/from16 v25, v3

    :goto_3
    move/from16 v3, p1

    goto/16 :goto_1e

    .line 1808
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "userPackagesStateFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v6, v25

    move-object/from16 v25, v28

    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1801
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "userPackagesStateFile":Ljava/io/File;
    :catch_8
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move-object/from16 v25, v28

    const/4 v4, 0x6

    .end local v28    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1e

    .line 1808
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v27    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v27, v14

    move/from16 v3, p1

    move-object v6, v11

    move-object/from16 v25, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1801
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v27    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v27, v14

    move/from16 v3, p1

    move-object v5, v7

    move v4, v8

    move-object v2, v9

    move-object v6, v11

    move-object/from16 v25, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    goto/16 :goto_1e

    .line 1590
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v27    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_4
    move-object/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v14

    move-object v3, v15

    .line 1624
    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v27    # "backupFile":Ljava/io/File;
    :goto_4
    :try_start_6
    invoke-static/range {v23 .. v23}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1b

    .line 1627
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    :goto_5
    :try_start_7
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1b

    move v4, v2

    .local v4, "type":I
    const/4 v6, 0x2

    const/4 v15, 0x1

    if-eq v2, v6, :cond_5

    if-eq v4, v15, :cond_5

    goto :goto_5

    .line 1632
    :cond_5
    const/4 v2, 0x5

    if-eq v4, v6, :cond_6

    .line 1633
    :try_start_8
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "No start tag found in package restrictions file\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const-string v5, "No start tag found in package manager stopped packages"

    invoke-static {v2, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1636
    return-void

    .line 1639
    :cond_6
    :try_start_9
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    move v14, v5

    .line 1640
    .local v14, "outerDepth":I
    const/4 v5, 0x0

    .line 1641
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_6
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1b

    move v11, v7

    .end local v4    # "type":I
    .local v11, "type":I
    if-eq v7, v15, :cond_1f

    const/4 v9, 0x3

    if-ne v11, v9, :cond_8

    .line 1643
    :try_start_a
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    if-le v4, v14, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v33, v11

    move/from16 v37, v14

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    goto/16 :goto_1a

    .line 1644
    :cond_8
    :goto_7
    if-eq v11, v9, :cond_1e

    if-ne v11, v10, :cond_9

    .line 1646
    move/from16 v45, v2

    move/from16 v40, v6

    move/from16 v39, v10

    move/from16 v33, v11

    move-object/from16 v51, v12

    move-object/from16 v52, v13

    move/from16 v37, v14

    move/from16 v50, v15

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    goto/16 :goto_19

    .line 1649
    :cond_9
    :try_start_b
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 1650
    .local v8, "tagName":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1b

    if-eqz v4, :cond_18

    .line 1651
    :try_start_c
    const-string v4, "name"

    const/4 v7, 0x0

    invoke-interface {v0, v7, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1652
    .local v4, "name":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    move-object/from16 v28, v2

    .line 1653
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v28, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v28, :cond_a

    .line 1654
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package known for stopped package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v5, v25

    :try_start_e
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 1657
    move-object/from16 v25, v5

    move v4, v11

    move-object/from16 v5, v28

    const/4 v2, 0x5

    goto :goto_6

    .line 1808
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v14    # "outerDepth":I
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    :catch_b
    move-exception v0

    move-object/from16 v25, v3

    move-object v6, v5

    goto/16 :goto_2

    .line 1801
    :catch_c
    move-exception v0

    move-object/from16 v25, v3

    move-object v6, v5

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    const/4 v4, 0x6

    goto/16 :goto_3

    .line 1660
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    .restart local v14    # "outerDepth":I
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v5, v25

    :try_start_f
    const-string v2, "ceDataInode"

    const-wide/16 v9, 0x0

    .line 1661
    invoke-interface {v0, v7, v2, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    move-object v2, v4

    move-object/from16 v29, v5

    .end local v4    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    move-wide v4, v9

    .line 1662
    .local v4, "ceDataInode":J
    :try_start_10
    const-string v9, "inst"

    .line 1663
    invoke-interface {v0, v7, v9, v15}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    move-object v10, v7

    move v7, v9

    .line 1664
    .local v7, "installed":Z
    const-string v9, "stopped"
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1665
    move-object/from16 v25, v3

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v25, "userPackagesStateFile":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_11
    invoke-interface {v0, v10, v9, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v30, v8

    .end local v8    # "tagName":Ljava/lang/String;
    .local v30, "tagName":Ljava/lang/String;
    move v8, v9

    .line 1666
    .local v8, "stopped":Z
    const-string v9, "nl"

    .line 1667
    invoke-interface {v0, v10, v9, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 1671
    .local v9, "notLaunched":Z
    const-string v6, "hidden"

    invoke-interface {v0, v10, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1672
    .local v6, "hidden":Z
    if-nez v6, :cond_b

    .line 1673
    const-string v15, "blocked"

    invoke-interface {v0, v10, v15, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    move v6, v15

    move/from16 v32, v6

    goto :goto_8

    .line 1672
    :cond_b
    move/from16 v32, v6

    .line 1676
    .end local v6    # "hidden":Z
    .local v32, "hidden":Z
    :goto_8
    const-string v6, "distraction_flags"

    invoke-interface {v0, v10, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move/from16 v33, v11

    .end local v11    # "type":I
    .local v33, "type":I
    move v11, v6

    .line 1677
    .local v11, "distractionFlags":I
    const-string v6, "suspended"

    invoke-interface {v0, v10, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move/from16 v34, v6

    .line 1678
    .local v34, "suspended":Z
    invoke-interface {v0, v10, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1680
    .local v6, "oldSuspendingPackage":Ljava/lang/String;
    const-string v15, "suspend_dialog_message"

    invoke-interface {v0, v10, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1682
    .local v15, "dialogMessage":Ljava/lang/String;
    if-eqz v34, :cond_c

    if-nez v6, :cond_c

    .line 1683
    const-string v20, "android"

    move-object/from16 v6, v20

    .line 1686
    :cond_c
    const-string v3, "blockUninstall"

    .line 1687
    move-object/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "oldSuspendingPackage":Ljava/lang/String;
    .local v20, "oldSuspendingPackage":Ljava/lang/String;
    invoke-interface {v0, v10, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v36, v3

    .line 1688
    .local v36, "blockUninstall":Z
    const-string v3, "instant-app"

    .line 1689
    invoke-interface {v0, v10, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v37, v14

    .end local v14    # "outerDepth":I
    .local v37, "outerDepth":I
    move v14, v3

    .line 1690
    .local v14, "instantApp":Z
    const-string v3, "virtual-preload"

    .line 1691
    invoke-interface {v0, v10, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v38, v15

    .end local v15    # "dialogMessage":Ljava/lang/String;
    .local v38, "dialogMessage":Ljava/lang/String;
    move v15, v3

    .line 1692
    .local v15, "virtualPreload":Z
    const-string v3, "enabled"

    invoke-interface {v0, v10, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v41, v20

    const/16 v40, 0x2

    .end local v20    # "oldSuspendingPackage":Ljava/lang/String;
    .local v41, "oldSuspendingPackage":Ljava/lang/String;
    move v6, v3

    .line 1694
    .local v6, "enabled":I
    const-string v3, "enabledCaller"

    invoke-interface {v0, v10, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1696
    .local v16, "enabledCaller":Ljava/lang/String;
    const-string v3, "harmful-app-warning"

    .line 1697
    invoke-interface {v0, v10, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1698
    .local v21, "harmfulAppWarning":Ljava/lang/String;
    const-string v3, "domainVerificationStatus"

    move-wide/from16 v42, v4

    const/4 v4, 0x0

    .end local v4    # "ceDataInode":J
    .local v42, "ceDataInode":J
    invoke-interface {v0, v10, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    .line 1701
    .local v5, "verifState":I
    const-string v3, "install-reason"

    invoke-interface {v0, v10, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 1703
    .local v19, "installReason":I
    const-string v3, "uninstall-reason"

    invoke-interface {v0, v10, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 1705
    .local v20, "uninstallReason":I
    const-string v3, "splash-screen-theme"

    invoke-interface {v0, v10, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1708
    .local v22, "splashScreenTheme":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1709
    .local v3, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v35, 0x0

    .line 1710
    .local v35, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v44, 0x0

    .line 1711
    .local v44, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v45, 0x0

    .line 1712
    .local v45, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    const/16 v46, 0x0

    .line 1714
    .local v46, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v47

    move/from16 v48, v47

    .line 1715
    .local v48, "packageDepth":I
    const/16 v47, 0x0

    move-object/from16 v49, v44

    move-object/from16 v50, v45

    move/from16 v53, v33

    move-object/from16 v33, v3

    move/from16 v3, v53

    .line 1716
    .end local v44    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v45    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v3, "type":I
    .local v33, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v47, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v49, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v50, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :goto_9
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v3, v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 1718
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    move/from16 v4, v48

    .end local v48    # "packageDepth":I
    .local v4, "packageDepth":I
    if-le v10, v4, :cond_d

    goto :goto_a

    :cond_d
    move/from16 v51, v3

    move/from16 v48, v4

    goto/16 :goto_10

    .line 1716
    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    :cond_e
    move/from16 v4, v48

    .line 1719
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    :goto_a
    const/4 v10, 0x3

    if-eq v3, v10, :cond_13

    const/4 v10, 0x4

    if-ne v3, v10, :cond_f

    .line 1721
    move/from16 v51, v3

    move/from16 v48, v4

    goto/16 :goto_f

    .line 1723
    :cond_f
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v48, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v51

    sparse-switch v51, :sswitch_data_0

    move/from16 v51, v3

    .end local v3    # "type":I
    .local v51, "type":I
    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_0
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "suspended-dialog-info"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v48, 0x4

    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_1
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "suspend-params"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v48, 0x5

    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_2
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "suspended-launcher-extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v48, 0x3

    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_3
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "suspended-app-extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move/from16 v48, v40

    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_4
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "enabled-components"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v48, 0x0

    goto :goto_b

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :sswitch_5
    move/from16 v51, v3

    .end local v3    # "type":I
    .restart local v51    # "type":I
    const-string v3, "disabled-components"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    if-eqz v3, :cond_10

    const/16 v48, 0x1

    :cond_10
    :goto_b
    const-string v3, "PackageSettings"

    packed-switch v48, :pswitch_data_0

    .line 1754
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    goto :goto_d

    .line 1740
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    :pswitch_0
    const/4 v10, 0x0

    :try_start_12
    invoke-interface {v0, v10, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v48, v45

    .line 1742
    .local v48, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v10, v48

    .end local v48    # "suspendingPackage":Ljava/lang/String;
    .local v10, "suspendingPackage":Ljava/lang/String;
    if-nez v10, :cond_11

    .line 1743
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .local v48, "packageDepth":I
    const-string v4, "No suspendingPackage found inside tag suspend-params"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    goto/16 :goto_f

    .line 1747
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    :cond_11
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    if-nez v47, :cond_12

    .line 1748
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v47, v3

    goto :goto_c

    .line 1747
    :cond_12
    move-object/from16 v3, v47

    .line 1750
    .end local v47    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v3, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :goto_c
    nop

    .line 1751
    invoke-static {v0}, Landroid/content/pm/PackageUserState$SuspendParams;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v4

    .line 1750
    invoke-virtual {v3, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    move-object/from16 v47, v3

    goto :goto_e

    .line 1737
    .end local v3    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v10    # "suspendingPackage":Ljava/lang/String;
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    .restart local v47    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :pswitch_1
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v3

    .line 1738
    .end local v46    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v3, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move-object/from16 v46, v3

    goto :goto_e

    .line 1734
    .end local v3    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    .restart local v46    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :pswitch_2
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1735
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v3, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    move-object/from16 v50, v3

    goto :goto_e

    .line 1731
    .end local v3    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    .restart local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :pswitch_3
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1732
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v3, "suspendedAppExtras":Landroid/os/PersistableBundle;
    move-object/from16 v49, v3

    goto :goto_e

    .line 1728
    .end local v3    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    .restart local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    :pswitch_4
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    .line 1729
    .end local v35    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v35, v3

    goto :goto_e

    .line 1725
    .end local v3    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v48    # "packageDepth":I
    .restart local v4    # "packageDepth":I
    .restart local v35    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :pswitch_5
    move/from16 v48, v4

    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    .line 1726
    .end local v33    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v33, v3

    goto :goto_e

    .line 1754
    .end local v3    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tag "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under tag "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move/from16 v3, v51

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_9

    .line 1719
    .end local v48    # "packageDepth":I
    .end local v51    # "type":I
    .local v3, "type":I
    .restart local v4    # "packageDepth":I
    :cond_13
    move/from16 v51, v3

    move/from16 v48, v4

    .line 1716
    .end local v3    # "type":I
    .end local v4    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    .restart local v51    # "type":I
    :goto_f
    move/from16 v3, v51

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_9

    .end local v51    # "type":I
    .restart local v3    # "type":I
    :cond_14
    move/from16 v51, v3

    .line 1758
    .end local v3    # "type":I
    .restart local v51    # "type":I
    :goto_10
    if-nez v46, :cond_15

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1759
    new-instance v3, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v3}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1760
    move-object/from16 v4, v38

    .end local v38    # "dialogMessage":Ljava/lang/String;
    .local v4, "dialogMessage":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v3

    .line 1761
    invoke-virtual {v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v3

    move-object/from16 v46, v3

    move-object/from16 v10, v46

    goto :goto_11

    .line 1758
    .end local v4    # "dialogMessage":Ljava/lang/String;
    .restart local v38    # "dialogMessage":Ljava/lang/String;
    :cond_15
    move-object/from16 v4, v38

    .line 1763
    .end local v38    # "dialogMessage":Ljava/lang/String;
    .restart local v4    # "dialogMessage":Ljava/lang/String;
    move-object/from16 v10, v46

    .end local v46    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v10, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :goto_11
    if-eqz v34, :cond_16

    if-nez v47, :cond_16

    .line 1764
    nop

    .line 1765
    move-object/from16 v31, v0

    move-object/from16 v3, v49

    move-object/from16 v0, v50

    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v0, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v3, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v31, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {v10, v3, v0}, Landroid/content/pm/PackageUserState$SuspendParams;->getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v38

    move-object/from16 v44, v38

    .line 1769
    .local v44, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    new-instance v38, Landroid/util/ArrayMap;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v45, v38

    .line 1770
    .end local v47    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v45, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    move-object/from16 v38, v0

    move-object/from16 v0, v44

    move-object/from16 v44, v4

    move-object/from16 v4, v41

    move-object/from16 v41, v3

    move-object/from16 v3, v45

    .end local v45    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v0, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    .local v3, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v4, "oldSuspendingPackage":Ljava/lang/String;
    .local v38, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v41, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v44, "dialogMessage":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    move-object/from16 v47, v3

    goto :goto_12

    .line 1763
    .end local v3    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v38    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v44    # "dialogMessage":Ljava/lang/String;
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    .local v4, "dialogMessage":Ljava/lang/String;
    .local v41, "oldSuspendingPackage":Ljava/lang/String;
    .restart local v47    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .restart local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :cond_16
    move-object/from16 v31, v0

    move-object/from16 v44, v4

    move-object/from16 v4, v41

    move-object/from16 v41, v49

    move-object/from16 v38, v50

    .line 1773
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v4, "oldSuspendingPackage":Ljava/lang/String;
    .restart local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v38    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v41, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v44    # "dialogMessage":Ljava/lang/String;
    :goto_12
    if-eqz v36, :cond_17

    .line 1774
    move/from16 v3, p1

    const/4 v0, 0x1

    :try_start_13
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    goto :goto_13

    .line 1773
    :cond_17
    move/from16 v3, p1

    const/4 v0, 0x1

    .line 1776
    :goto_13
    move-object v0, v2

    const/16 v45, 0x5

    .end local v2    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    move-object/from16 v2, v28

    move-object/from16 v49, v41

    move/from16 v41, v51

    .end local v51    # "type":I
    .local v41, "type":I
    .restart local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    move/from16 v3, p1

    move-object/from16 v46, v10

    const/16 v39, 0x4

    const/16 v50, 0x1

    .end local v10    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v46    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move/from16 v10, v32

    move-object/from16 v51, v12

    move/from16 v12, v34

    move-object/from16 v52, v13

    move-object/from16 v13, v47

    move-object/from16 v17, v33

    move-object/from16 v18, v35

    move-wide/from16 v53, v42

    move-object/from16 v43, v0

    move v0, v5

    move-object/from16 v42, v44

    move/from16 v44, v48

    move-object/from16 v48, v4

    move-wide/from16 v4, v53

    .end local v5    # "verifState":I
    .local v0, "verifState":I
    .local v4, "ceDataInode":J
    .local v42, "dialogMessage":Ljava/lang/String;
    .local v43, "name":Ljava/lang/String;
    .local v44, "packageDepth":I
    .local v48, "oldSuspendingPackage":Ljava/lang/String;
    :try_start_14
    invoke-virtual/range {v2 .. v22}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    move/from16 v3, p1

    move-object/from16 v10, v43

    .end local v43    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    :try_start_15
    invoke-interface {v2, v10, v3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16

    .line 1783
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v0, v31

    move/from16 v4, v41

    .end local v0    # "verifState":I
    .end local v4    # "ceDataInode":J
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "distractionFlags":I
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "installReason":I
    .end local v20    # "uninstallReason":I
    .end local v21    # "harmfulAppWarning":Ljava/lang/String;
    .end local v22    # "splashScreenTheme":Ljava/lang/String;
    .end local v32    # "hidden":Z
    .end local v33    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v34    # "suspended":Z
    .end local v35    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "blockUninstall":Z
    .end local v38    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v42    # "dialogMessage":Ljava/lang/String;
    .end local v44    # "packageDepth":I
    .end local v46    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v47    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v48    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    goto/16 :goto_17

    .line 1808
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v30    # "tagName":Ljava/lang/String;
    .end local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v37    # "outerDepth":I
    .end local v41    # "type":I
    :catch_d
    move-exception v0

    move/from16 v3, p1

    goto/16 :goto_18

    .line 1801
    :catch_e
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v29

    const/4 v4, 0x6

    goto/16 :goto_1e

    .line 1808
    .end local v25    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    :catch_f
    move-exception v0

    goto :goto_14

    .line 1801
    :catch_10
    move-exception v0

    goto :goto_15

    .line 1808
    :catch_11
    move-exception v0

    move-object/from16 v25, v3

    move/from16 v3, p1

    move-object v6, v5

    goto/16 :goto_1d

    .line 1801
    :catch_12
    move-exception v0

    move-object/from16 v25, v3

    move/from16 v3, p1

    move-object v6, v5

    goto/16 :goto_1b

    .line 1808
    :catch_13
    move-exception v0

    move-object/from16 v29, v25

    :goto_14
    move-object/from16 v25, v3

    move/from16 v3, p1

    move-object/from16 v6, v29

    goto/16 :goto_1d

    .line 1801
    :catch_14
    move-exception v0

    move-object/from16 v29, v25

    :goto_15
    move-object/from16 v25, v3

    move/from16 v3, p1

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v29

    goto/16 :goto_1c

    .line 1783
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    .local v8, "tagName":Ljava/lang/String;
    .local v11, "type":I
    .local v14, "outerDepth":I
    :cond_18
    move-object/from16 v31, v0

    move/from16 v45, v2

    move/from16 v40, v6

    move-object/from16 v30, v8

    move/from16 v39, v10

    move/from16 v33, v11

    move-object/from16 v51, v12

    move-object/from16 v52, v13

    move/from16 v37, v14

    move/from16 v50, v15

    move-object/from16 v29, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v14    # "outerDepth":I
    .restart local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "tagName":Ljava/lang/String;
    .restart local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .local v33, "type":I
    .restart local v37    # "outerDepth":I
    :try_start_16
    const-string v0, "preferred-activities"

    move-object/from16 v2, v30

    .end local v30    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    if-eqz v0, :cond_19

    .line 1784
    move-object/from16 v0, v31

    .end local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :try_start_17
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16

    move-object/from16 v6, v29

    goto :goto_16

    .line 1801
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "type":I
    .end local v37    # "outerDepth":I
    :catch_15
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v29

    const/4 v4, 0x6

    goto/16 :goto_1e

    .line 1785
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v33    # "type":I
    .restart local v37    # "outerDepth":I
    :cond_19
    move-object/from16 v0, v31

    .end local v31    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :try_start_18
    const-string v4, "persistent-preferred-activities"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    if-eqz v4, :cond_1a

    .line 1786
    :try_start_19
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_15
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16

    move-object/from16 v6, v29

    goto :goto_16

    .line 1787
    :cond_1a
    :try_start_1a
    const-string v4, "crossProfile-intent-filters"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    if-eqz v4, :cond_1b

    .line 1788
    :try_start_1b
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_15
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_16

    move-object/from16 v6, v29

    goto :goto_16

    .line 1789
    :cond_1b
    :try_start_1c
    const-string v4, "default-apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16

    if-eqz v4, :cond_1c

    .line 1790
    :try_start_1d
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_16

    move-object/from16 v6, v29

    goto :goto_16

    .line 1791
    :cond_1c
    :try_start_1e
    const-string v4, "block-uninstall-packages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    if-eqz v4, :cond_1d

    .line 1792
    :try_start_1f
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_16

    move-object/from16 v6, v29

    goto :goto_16

    .line 1794
    :cond_1d
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_17
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_16

    .line 1794
    move-object/from16 v6, v29

    :try_start_21
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1798
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_16
    move/from16 v4, v33

    .end local v33    # "type":I
    .local v4, "type":I
    :goto_17
    move-object/from16 v3, v25

    move/from16 v14, v37

    move/from16 v10, v39

    move/from16 v2, v45

    move/from16 v15, v50

    move-object/from16 v12, v51

    move-object/from16 v13, v52

    move-object/from16 v25, v6

    move/from16 v6, v40

    goto/16 :goto_6

    .line 1808
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v37    # "outerDepth":I
    :catch_16
    move-exception v0

    :goto_18
    move-object/from16 v6, v29

    goto/16 :goto_1d

    .line 1801
    :catch_17
    move-exception v0

    move-object/from16 v6, v29

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    const/4 v4, 0x6

    goto/16 :goto_1e

    .line 1644
    .end local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "type":I
    .restart local v14    # "outerDepth":I
    :cond_1e
    move/from16 v45, v2

    move/from16 v40, v6

    move/from16 v39, v10

    move/from16 v33, v11

    move-object/from16 v51, v12

    move-object/from16 v52, v13

    move/from16 v37, v14

    move/from16 v50, v15

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    .line 1641
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "type":I
    .end local v14    # "outerDepth":I
    .restart local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v33    # "type":I
    .restart local v37    # "outerDepth":I
    :goto_19
    move-object/from16 v3, v25

    move/from16 v4, v33

    move/from16 v14, v37

    move/from16 v10, v39

    move/from16 v2, v45

    move/from16 v15, v50

    move-object/from16 v12, v51

    move-object/from16 v13, v52

    move-object/from16 v25, v6

    move/from16 v6, v40

    goto/16 :goto_6

    .end local v25    # "userPackagesStateFile":Ljava/io/File;
    .end local v33    # "type":I
    .end local v37    # "outerDepth":I
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "type":I
    .restart local v14    # "outerDepth":I
    :cond_1f
    move/from16 v33, v11

    move/from16 v37, v14

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    .line 1800
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "type":I
    .end local v14    # "outerDepth":I
    .restart local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v33    # "type":I
    .restart local v37    # "outerDepth":I
    :goto_1a
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_19
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_18

    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "type":I
    .end local v37    # "outerDepth":I
    goto/16 :goto_1f

    .line 1808
    :catch_18
    move-exception v0

    goto :goto_1d

    .line 1801
    :catch_19
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    const/4 v4, 0x6

    goto :goto_1e

    .end local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_1a
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    :goto_1b
    move-object/from16 v2, v24

    move-object/from16 v5, v26

    :goto_1c
    const/4 v4, 0x6

    goto :goto_1e

    .line 1808
    :catch_1b
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v25, v3

    move/from16 v3, p1

    .line 1809
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v25    # "userPackagesStateFile":Ljava/io/File;
    :goto_1d
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1811
    move-object/from16 v2, v24

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 1801
    .end local v0    # "e":Ljava/io/IOException;
    .end local v25    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_1c
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    const/4 v4, 0x6

    move-object/from16 v25, v3

    move/from16 v3, p1

    .line 1802
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v25    # "userPackagesStateFile":Ljava/io/File;
    :goto_1e
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading stopped packages: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1805
    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1813
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1f
    nop

    .line 1814
    :goto_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78da70f9 -> :sswitch_5
        -0x75017ede -> :sswitch_4
        -0x5ee8613f -> :sswitch_3
        -0x54ce12c2 -> :sswitch_2
        -0x3326b7c9 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readPermissionStateForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3047
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3048
    return-void
.end method

.method readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1439
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1440
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 1441
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1442
    goto :goto_0

    .line 1445
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_5

    .line 1447
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1448
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1449
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    .line 1450
    .local v4, "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1451
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 1453
    .end local v4    # "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    :cond_3
    goto :goto_1

    .line 1454
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1456
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1454
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1459
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 1460
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1460
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1462
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1464
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1465
    :cond_6
    return-void
.end method

.method readStoppedLPw()V
    .locals 16

    .line 2182
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2183
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const-string v4, "PackageManager"

    if-eqz v0, :cond_1

    .line 2185
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2186
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2189
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :cond_0
    goto :goto_0

    .line 2197
    :catch_0
    move-exception v0

    .line 2203
    :cond_1
    :goto_0
    const-string v5, "Error reading package manager stopped packages"

    const-string v7, "Error reading: "

    const/4 v0, 0x0

    if-nez v2, :cond_4

    .line 2204
    :try_start_1
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2205
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v9, "No stopped packages file found\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-string v8, "No stopped packages file file; assuming all started"

    invoke-static {v3, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2211
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2212
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2213
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2214
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2215
    :cond_2
    return-void

    .line 2217
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    .line 2219
    :cond_4
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v8

    .line 2222
    .local v8, "parser":Landroid/util/TypedXmlPullParser;
    :goto_2
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v11, :cond_5

    if-eq v10, v12, :cond_5

    goto :goto_2

    .line 2227
    :cond_5
    if-eq v10, v11, :cond_6

    .line 2228
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2231
    return-void

    .line 2234
    :cond_6
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    .line 2235
    .local v9, "outerDepth":I
    :goto_3
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move v10, v11

    if-eq v11, v12, :cond_d

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 2237
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v9, :cond_d

    .line 2238
    :cond_7
    if-eq v10, v11, :cond_c

    if-ne v10, v3, :cond_8

    .line 2240
    goto :goto_6

    .line 2243
    :cond_8
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2244
    .local v11, "tagName":Ljava/lang/String;
    const-string v13, "pkg"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2245
    const-string v13, "name"

    const/4 v14, 0x0

    invoke-interface {v8, v14, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2246
    .local v13, "name":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v13}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 2247
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_9

    .line 2248
    invoke-virtual {v15, v12, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2249
    const-string v3, "1"

    const-string v6, "nl"

    invoke-interface {v8, v14, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2250
    invoke-virtual {v15, v12, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_4

    .line 2253
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_a
    :goto_4
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2257
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_5

    .line 2258
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2258
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2262
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 2235
    :cond_c
    :goto_6
    const/4 v3, 0x4

    goto :goto_3

    .line 2264
    :cond_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "outerDepth":I
    .end local v10    # "type":I
    goto :goto_7

    .line 2273
    :catch_1
    move-exception v0

    .line 2274
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2276
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2266
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2267
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2270
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2279
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 2280
    :goto_8
    return-void
.end method

.method readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "outPs"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2149
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2150
    .local v1, "libName":Ljava/lang/String;
    const-string v2, "version"

    const-wide/16 v3, -0x1

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2152
    .local v2, "libVersion":J
    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 2153
    const-class v0, Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2155
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2159
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2160
    return-void
.end method

.method registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .locals 6
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1122
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_0

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1125
    const/4 v0, 0x1

    .local v0, "createdNew":Z
    goto :goto_0

    .line 1128
    .end local v0    # "createdNew":Z
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 1130
    .restart local v0    # "createdNew":Z
    :goto_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_1

    .line 1136
    return v0

    .line 1131
    :cond_1
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be assigned a valid UID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1133
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 181
    return-void
.end method

.method removeAppIdLPw(I)V
    .locals 4
    .param p1, "appId"    # I

    .line 1303
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 1305
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1306
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/utils/WatchedArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 1310
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1311
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 4050
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    monitor-enter v0

    .line 4052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4053
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4054
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4057
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    .line 4058
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4059
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 4060
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4061
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4062
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4063
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4064
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4065
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 4066
    const/4 v5, 0x1

    .line 4067
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 4069
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_1
    goto :goto_1

    .line 4070
    :cond_2
    if-eqz v5, :cond_3

    .line 4071
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4058
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4074
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 4075
    return-void

    .line 4074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1351
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 825
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    return-void
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1224
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1227
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 1228
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1229
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1232
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1235
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1236
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1239
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeRenamedPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    return-void
.end method

.method removeUserLPw(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 4028
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4029
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4030
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4031
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 4032
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4033
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4034
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4035
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4036
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4037
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4039
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4040
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4042
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4046
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4047
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1817
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1818
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 1819
    if-nez v0, :cond_0

    .line 1820
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1821
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1823
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1824
    :cond_1
    if-eqz v0, :cond_2

    .line 1825
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1826
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1827
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 1830
    :cond_2
    :goto_0
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 1401
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1402
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4219
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4220
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 4223
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4224
    return-void

    .line 4221
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "userId"    # I

    .line 4192
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4193
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3

    .line 4203
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p3, :cond_2

    .line 4204
    invoke-virtual {v0, p3, p4}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4206
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4207
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4208
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, p4}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4211
    :cond_0
    invoke-virtual {v0, v2, p4}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4213
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4215
    :cond_2
    return v2

    .line 4194
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setPermissionControllerVersion(J)V
    .locals 1
    .param p1, "version"    # J

    .line 1405
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    .line 1406
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/Settings;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->snapshot()Lcom/android/server/pm/Settings;

    move-result-object v0

    return-object v0
.end method

.method systemReady(Lcom/android/server/pm/ComponentResolver;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "resolver"    # Lcom/android/server/pm/ComponentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ComponentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5755
    .local v0, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5756
    .local v1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5757
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredIntentResolver;

    .line 5758
    .local v3, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5759
    invoke-virtual {v3}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 5760
    .local v5, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v6, v6, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Lcom/android/server/pm/ComponentResolver;->isActivityDefined(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5761
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5763
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_0
    goto :goto_1

    .line 5764
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 5765
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 5766
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 5767
    .restart local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling preferred activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageSettings"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    invoke-virtual {v3, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 5765
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5771
    .end local v4    # "r":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5756
    .end local v3    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5774
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    .line 5775
    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 191
    return-void
.end method

.method updateRuntimePermissionsFingerprintLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1393
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprintLPr(I)V

    .line 1394
    return-void
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4183
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4184
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4187
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4185
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    .line 1383
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1384
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsyncLPr(I)V

    .line 1383
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .line 1374
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1375
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_0

    return-void

    .line 1377
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1378
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1379
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1380
    :cond_1
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Landroid/util/TypedXmlSerializer;I)V
    .locals 7
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1933
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1934
    const/4 v1, 0x0

    const-string v2, "block-uninstall-packages"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1935
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1936
    const-string v4, "block-uninstall"

    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "packageName"

    invoke-interface {p1, v1, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1938
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1935
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1940
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1942
    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Landroid/util/TypedXmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1906
    const/4 v0, 0x0

    const-string v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1907
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1908
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    .line 1909
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1910
    .local v4, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string v5, "item"

    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1911
    invoke-virtual {v4, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 1912
    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1913
    .end local v4    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_0

    .line 1915
    :cond_0
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1916
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    const/4 v0, 0x0

    const-string v1, "default-apps"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1921
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1922
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1923
    const-string v3, "default-browser"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1924
    const-string v4, "packageName"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1927
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    return-void
.end method

.method writeDisabledSysPackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2657
    const/4 v0, 0x0

    const-string v1, "updated-package"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2658
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2659
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2660
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2662
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2663
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    const-string v4, "ft"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2664
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    const-string v4, "it"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2665
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    const-string v4, "ut"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    const-string v4, "version"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2667
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2668
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2670
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2671
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2673
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2674
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2676
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2677
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2680
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_5

    .line 2681
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    const-string v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2683
    :cond_5
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    const-string v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2685
    :goto_0
    nop

    .line 2686
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getIncrementalStates()Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v2

    .line 2685
    const-string v3, "loadingProgress"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 2688
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 2690
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2691
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 6

    .line 2427
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2429
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2430
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2431
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2432
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2431
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2435
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2437
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2438
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2439
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2442
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2443
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2446
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2442
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2449
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2452
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2454
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2455
    return-void

    .line 2452
    :cond_1
    :goto_0
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "excludedUserIds"    # [I

    .line 2458
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2459
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2460
    .local v3, "firstTime":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2461
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    .line 2464
    .local v1, "userIdsChanged":Z
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2466
    .local v2, "dir":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 2467
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2469
    new-instance v4, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v4

    .line 2470
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    :cond_3
    iget v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq v4, p2, :cond_4

    .line 2475
    new-instance v4, Ljava/io/File;

    const-string v5, "appid"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2476
    .local v4, "appIdFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2480
    .end local v4    # "appIdFile":Ljava/io/File;
    :cond_4
    if-eqz v1, :cond_a

    .line 2482
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_7

    .line 2483
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, p3, v4

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2485
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v6, "excluded_userids"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v6, p3, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2482
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2491
    .end local v4    # "i":I
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v4, :cond_9

    .line 2492
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 2493
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v5, v5, v4

    invoke-static {p3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2494
    new-instance v5, Ljava/io/File;

    const-string v6, "clear_userid"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2492
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2502
    .end local v4    # "i":I
    :cond_9
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2504
    :cond_a
    return-void
.end method

.method writeKeySetAliasesLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 7
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2806
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2807
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    const-string v3, "defined-keyset"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2808
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alias"

    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2809
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "identifier"

    invoke-interface {p1, v2, v6, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2810
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2811
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 2812
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 20

    .line 2285
    move-object/from16 v1, p0

    const-string v0, "renamed-package"

    const-string v2, "shared-user"

    const-string v3, "permissions"

    const-string v4, "version"

    const-string v5, "verifier"

    const-string v6, "permission-trees"

    const-string v7, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2291
    .local v8, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2295
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v11, "PackageManager"

    if-eqz v10, :cond_1

    .line 2300
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2301
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2302
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return-void

    .line 2308
    :cond_0
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2309
    const-string v10, "Preserving older settings backup"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_1
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v10}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 2316
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2317
    .local v10, "fstr":Ljava/io/FileOutputStream;
    invoke-static {v10}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v12

    .line 2318
    .local v12, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v12, v15, v14}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2319
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v12, v14, v13}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2321
    invoke-interface {v12, v15, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 2324
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v14, v13}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2325
    .local v14, "volumeUuid":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v13}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Settings$VersionInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2327
    .local v15, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object/from16 v16, v11

    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v12, v11, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2328
    const-string v11, "volumeUuid"

    invoke-static {v12, v11, v14}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2329
    const-string v11, "sdkVersion"

    move-object/from16 v17, v14

    .end local v14    # "volumeUuid":Ljava/lang/String;
    .local v17, "volumeUuid":Ljava/lang/String;
    iget v14, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "startTime":J
    .local v18, "startTime":J
    :try_start_2
    invoke-interface {v12, v8, v11, v14}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2330
    const-string v9, "databaseVersion"

    iget v11, v15, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v12, v8, v9, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2331
    const-string v8, "fingerprint"

    iget-object v9, v15, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v12, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2332
    const/4 v8, 0x0

    invoke-interface {v12, v8, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    nop

    .end local v15    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v17    # "volumeUuid":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    move-wide/from16 v8, v18

    const/4 v15, 0x0

    goto :goto_0

    .line 2403
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v12    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v13    # "i":I
    .end local v18    # "startTime":J
    .restart local v8    # "startTime":J
    :catch_0
    move-exception v0

    move-wide/from16 v18, v8

    goto/16 :goto_5

    .line 2323
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v12    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v13    # "i":I
    :cond_2
    move-wide/from16 v18, v8

    move-object/from16 v16, v11

    .line 2335
    .end local v8    # "startTime":J
    .end local v13    # "i":I
    .restart local v18    # "startTime":J
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v4, :cond_3

    .line 2336
    const/4 v4, 0x0

    invoke-interface {v12, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    const-string v4, "device"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v12, v9, v4, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2338
    invoke-interface {v12, v9, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v12, v4, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Landroid/util/TypedXmlSerializer;)V

    .line 2343
    invoke-interface {v12, v4, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    invoke-interface {v12, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2346
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Landroid/util/TypedXmlSerializer;)V

    .line 2347
    invoke-interface {v12, v4, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2349
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2350
    .local v4, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v12, v4}, Lcom/android/server/pm/Settings;->writePackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2351
    .end local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2353
    :cond_4
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2354
    .restart local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v12, v4}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2355
    .end local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_2

    .line 2357
    :cond_5
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 2358
    .local v4, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/4 v5, 0x0

    invoke-interface {v12, v5, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    const-string v6, "name"

    iget-object v8, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v5, v6, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2360
    const-string v6, "userId"

    iget v8, v4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-interface {v12, v5, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2361
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string v6, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v12, v6, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2362
    const/4 v5, 0x0

    invoke-interface {v12, v5, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2363
    nop

    .end local v4    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_3

    .line 2365
    :cond_6
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2366
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2367
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v12, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    const-string v4, "new"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v12, v6, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    const-string v4, "old"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v12, v6, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2370
    invoke-interface {v12, v6, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2371
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 2374
    :cond_7
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v12, v2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Landroid/util/TypedXmlSerializer;ZI)V

    .line 2377
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Landroid/util/TypedXmlSerializer;)V

    .line 2379
    const/4 v0, 0x0

    invoke-interface {v12, v0, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2381
    invoke-interface {v12}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2383
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 2384
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2385
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 2389
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2390
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b0

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2399
    const-string v0, "package"

    .line 2400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    .line 2399
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2401
    return-void

    .line 2403
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v12    # "serializer":Landroid/util/TypedXmlSerializer;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v18    # "startTime":J
    .restart local v8    # "startTime":J
    :catch_2
    move-exception v0

    move-wide/from16 v18, v8

    move-object/from16 v16, v11

    .line 2404
    .end local v8    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    :goto_5
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v16

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2408
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2409
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_8
    return-void
.end method

.method writePackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2695
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2696
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2697
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2698
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2702
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2703
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2705
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2706
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2708
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2709
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2711
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2712
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2715
    :cond_4
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const-string v3, "publicFlags"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2716
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const-string v3, "privateFlags"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2717
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    const-string v4, "ft"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2718
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    const-string v4, "it"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2719
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    const-string v4, "ut"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2720
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    const-string v4, "version"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2721
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_5

    .line 2722
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    const-string v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2724
    :cond_5
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    const-string v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2726
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 2727
    const-string v2, "uidError"

    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2729
    :cond_6
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2730
    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 2731
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v5, "installer"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2733
    :cond_7
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2734
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    const-string v5, "installerAttributionTag"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2737
    :cond_8
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-eqz v4, :cond_9

    .line 2738
    const-string v4, "isOrphaned"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2740
    :cond_9
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2741
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v5, "installInitiator"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2743
    :cond_a
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_b

    .line 2744
    const-string v4, "installInitiatorUninstalled"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2746
    :cond_b
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2747
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    const-string v5, "installOriginator"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2749
    :cond_c
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2750
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string v5, "volumeUuid"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2752
    :cond_d
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 2753
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const-string v5, "categoryHint"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2755
    :cond_e
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v4, :cond_f

    .line 2756
    const-string v4, "updateAvailable"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2758
    :cond_f
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v4, :cond_10

    .line 2759
    const-string v4, "forceQueryable"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2761
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isPackageLoading()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2762
    const-string v4, "isLoading"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2764
    :cond_11
    nop

    .line 2765
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getIncrementalStates()Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v3

    .line 2764
    const-string v4, "loadingProgress"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 2767
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "domainSetId"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2769
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 2771
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2773
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v3, :cond_12

    .line 2774
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 2775
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 2774
    const-string v5, "install-initiator-sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2778
    :cond_12
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2779
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2780
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2781
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Landroid/util/TypedXmlSerializer;Ljava/util/Map;)V

    .line 2783
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2784
    return-void
.end method

.method writePackageListLPr()V
    .locals 1

    .line 2516
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2517
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 5
    .param p1, "creatingUserId"    # I

    .line 2520
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2521
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2522
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, "PackageSettings"

    if-nez v1, :cond_0

    .line 2523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get SELinux context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2524
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2523
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_0
    invoke-static {v1}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2528
    const-string v3, "Failed to set packages.list SELinux context"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2533
    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2534
    nop

    .line 2535
    return-void

    .line 2533
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2534
    throw v3
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 24
    .param p1, "userId"    # I

    .line 1945
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "suspend-params"

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string v5, "pkg"

    const-string v6, "package-restrictions"

    const-string v7, "name"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 1950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1954
    .local v8, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v10

    .line 1955
    .local v10, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v11

    .line 1956
    .local v11, "backupFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 1957
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_1

    .line 1962
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1963
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1964
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return-void

    .line 1970
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1971
    const-string v12, "Preserving older stopped packages backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_1
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1977
    .local v12, "fstr":Ljava/io/FileOutputStream;
    invoke-static {v12}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1978
    .local v14, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v15, 0x1

    move-object/from16 v16, v13

    :try_start_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v14, v15, v13}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1979
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v14, v13, v15}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1981
    const/4 v13, 0x0

    invoke-interface {v14, v13, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1984
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 1985
    .local v15, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v15, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1991
    .local v18, "ustate":Landroid/content/pm/PackageUserState;
    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-interface {v14, v13, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1992
    iget-object v13, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .end local v15    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v19, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v14, v15, v7, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1993
    move-wide/from16 v20, v8

    move-object/from16 v13, v18

    .end local v8    # "startTime":J
    .end local v18    # "ustate":Landroid/content/pm/PackageUserState;
    .local v13, "ustate":Landroid/content/pm/PackageUserState;
    .local v20, "startTime":J
    :try_start_2
    iget-wide v8, v13, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v22, 0x0

    cmp-long v8, v8, v22

    if-eqz v8, :cond_2

    .line 1994
    const-string v8, "ceDataInode"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v15, v10

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .local v15, "userPackagesStateFile":Ljava/io/File;
    :try_start_3
    iget-wide v9, v13, Landroid/content/pm/PackageUserState;->ceDataInode:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v18, "userPackagesStateFile":Ljava/io/File;
    :try_start_4
    invoke-interface {v14, v15, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2103
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v13    # "ustate":Landroid/content/pm/PackageUserState;
    .end local v14    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v18    # "userPackagesStateFile":Ljava/io/File;
    .end local v19    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v18, v15

    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v18    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_5

    .line 1993
    .end local v18    # "userPackagesStateFile":Ljava/io/File;
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v13    # "ustate":Landroid/content/pm/PackageUserState;
    .restart local v14    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v19    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object/from16 v18, v10

    .line 1996
    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v18    # "userPackagesStateFile":Ljava/io/File;
    :goto_1
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v8, :cond_3

    .line 1997
    const-string v8, "inst"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    :cond_3
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v8, :cond_4

    .line 2000
    const-string v8, "stopped"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    :cond_4
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v8, :cond_5

    .line 2003
    const-string v8, "nl"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    :cond_5
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v8, :cond_6

    .line 2006
    const-string v8, "hidden"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2008
    :cond_6
    iget v8, v13, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v8, :cond_7

    .line 2009
    const-string v8, "distraction_flags"

    iget v9, v13, Landroid/content/pm/PackageUserState;->distractionFlags:I

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2011
    :cond_7
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v8, :cond_8

    .line 2012
    const-string v8, "suspended"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    :cond_8
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v8, :cond_9

    .line 2015
    const-string v8, "instant-app"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    :cond_9
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v8, :cond_a

    .line 2018
    const-string v8, "virtual-preload"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    :cond_a
    iget v8, v13, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v8, :cond_b

    .line 2021
    const-string v8, "enabled"

    iget v9, v13, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 2023
    const-string v8, "enabledCaller"

    iget-object v9, v13, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    :cond_b
    iget v8, v13, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v8, :cond_c

    .line 2028
    const-string v8, "install-reason"

    iget v9, v13, Landroid/content/pm/PackageUserState;->installReason:I

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2030
    :cond_c
    iget v8, v13, Landroid/content/pm/PackageUserState;->uninstallReason:I

    if-eqz v8, :cond_d

    .line 2031
    const-string v8, "uninstall-reason"

    iget v9, v13, Landroid/content/pm/PackageUserState;->uninstallReason:I

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2033
    :cond_d
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 2034
    const-string v8, "harmful-app-warning"

    iget-object v9, v13, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2037
    :cond_e
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->splashScreenTheme:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 2038
    const-string v8, "splash-screen-theme"

    iget-object v9, v13, Landroid/content/pm/PackageUserState;->splashScreenTheme:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v14, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2041
    :cond_f
    iget-boolean v8, v13, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v8, :cond_11

    .line 2042
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v13, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 2043
    iget-object v9, v13, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2044
    .local v9, "suspendingPackage":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v14, v10, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2045
    const-string v15, "suspending-package"

    invoke-interface {v14, v10, v15, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2046
    iget-object v10, v13, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 2047
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 2048
    .local v10, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v10, :cond_10

    .line 2049
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageUserState$SuspendParams;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 2051
    :cond_10
    const/4 v15, 0x0

    invoke-interface {v14, v15, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2042
    nop

    .end local v9    # "suspendingPackage":Ljava/lang/String;
    .end local v10    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2054
    .end local v8    # "i":I
    :cond_11
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v9, "item"

    if-nez v8, :cond_13

    .line 2055
    const/4 v8, 0x0

    :try_start_5
    invoke-interface {v14, v8, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2056
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2057
    .local v10, "name":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-interface {v14, v15, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2058
    invoke-interface {v14, v15, v7, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2059
    invoke-interface {v14, v15, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2060
    nop

    .end local v10    # "name":Ljava/lang/String;
    goto :goto_3

    .line 2061
    :cond_12
    const/4 v8, 0x0

    invoke-interface {v14, v8, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2063
    :cond_13
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 2064
    const/4 v8, 0x0

    invoke-interface {v14, v8, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2065
    iget-object v8, v13, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2066
    .restart local v10    # "name":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-interface {v14, v15, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2067
    invoke-interface {v14, v15, v7, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2068
    invoke-interface {v14, v15, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2069
    nop

    .end local v10    # "name":Ljava/lang/String;
    goto :goto_4

    .line 2070
    :cond_14
    const/4 v8, 0x0

    invoke-interface {v14, v8, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2073
    :cond_15
    const/4 v8, 0x0

    invoke-interface {v14, v8, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    move-object/from16 v13, v17

    move-object/from16 v10, v18

    move-wide/from16 v8, v20

    .end local v13    # "ustate":Landroid/content/pm/PackageUserState;
    .end local v19    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_0

    .line 2103
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v18    # "userPackagesStateFile":Ljava/io/File;
    .local v10, "userPackagesStateFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v18    # "userPackagesStateFile":Ljava/io/File;
    goto :goto_5

    .line 2076
    .end local v18    # "userPackagesStateFile":Ljava/io/File;
    .end local v20    # "startTime":J
    .local v8, "startTime":J
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v14    # "serializer":Landroid/util/TypedXmlSerializer;
    :cond_16
    move-wide/from16 v20, v8

    move-object/from16 v18, v10

    .end local v8    # "startTime":J
    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v18    # "userPackagesStateFile":Ljava/io/File;
    .restart local v20    # "startTime":J
    const/4 v0, 0x1

    invoke-virtual {v1, v14, v2, v0}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 2077
    invoke-virtual {v1, v14, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;I)V

    .line 2078
    invoke-virtual {v1, v14, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Landroid/util/TypedXmlSerializer;I)V

    .line 2079
    invoke-virtual {v1, v14, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2080
    invoke-virtual {v1, v14, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Landroid/util/TypedXmlSerializer;I)V

    .line 2082
    const/4 v0, 0x0

    invoke-interface {v14, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2084
    invoke-interface {v14}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2086
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 2087
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2088
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2092
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 2093
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v20

    .line 2098
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2102
    return-void

    .line 2103
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "serializer":Landroid/util/TypedXmlSerializer;
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v18    # "userPackagesStateFile":Ljava/io/File;
    .end local v20    # "startTime":J
    .restart local v8    # "startTime":J
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    :catch_3
    move-exception v0

    move-wide/from16 v20, v8

    move-object/from16 v18, v10

    goto :goto_5

    :catch_4
    move-exception v0

    move-wide/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v16, v13

    .line 2104
    .end local v8    # "startTime":J
    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "userPackagesStateFile":Ljava/io/File;
    .restart local v20    # "startTime":J
    :goto_5
    const-string v3, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v4, v16

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2110
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2111
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up mangled file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_17
    return-void
.end method

.method public writePermissionStateForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5196
    if-eqz p2, :cond_0

    .line 5197
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserSyncLPr(I)V

    goto :goto_0

    .line 5199
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsyncLPr(I)V

    .line 5201
    :goto_0
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1892
    const/4 v0, 0x0

    const-string v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1893
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1894
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1895
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1896
    .local v4, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string v5, "item"

    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1897
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 1898
    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1899
    .end local v4    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_0

    .line 1901
    :cond_0
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1902
    return-void
.end method

.method writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V
    .locals 6
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1878
    const/4 v0, 0x0

    const-string v1, "preferred-activities"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1879
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1880
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1881
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 1882
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string v5, "item"

    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1883
    invoke-virtual {v4, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 1884
    invoke-interface {p1, v0, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1885
    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_0

    .line 1887
    :cond_0
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1888
    return-void
.end method

.method writeSigningKeySetLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 5
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2788
    const/4 v0, 0x0

    const-string v1, "proper-signing-keyset"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2789
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    const-string v4, "identifier"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2790
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2791
    return-void
.end method

.method writeUpgradeKeySetsLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2795
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 2797
    .local v3, "id":J
    const/4 v5, 0x0

    const-string v6, "upgrade-keyset"

    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2798
    const-string v7, "identifier"

    invoke-interface {p1, v5, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2799
    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2796
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2802
    :cond_0
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 1145
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1146
    return-void

    .line 1149
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1150
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_1

    .line 1151
    return-void

    .line 1153
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1154
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_2

    .line 1155
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_1

    .line 1156
    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_1
    nop

    .line 1157
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1158
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1160
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_3
    goto :goto_0

    .line 1161
    :cond_4
    return-void
.end method

.method writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .locals 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2168
    :cond_0
    array-length v0, p2

    .line 2169
    .local v0, "libCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2170
    aget-object v2, p2, v1

    .line 2171
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2172
    .local v3, "libVersion":J
    const/4 v5, 0x0

    const-string v6, "uses-static-lib"

    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2173
    const-string v7, "name"

    invoke-interface {p1, v5, v7, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2174
    const-string v7, "version"

    invoke-interface {p1, v5, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2175
    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2169
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2177
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 2166
    .end local v0    # "libCount":I
    :cond_2
    :goto_1
    return-void
.end method
