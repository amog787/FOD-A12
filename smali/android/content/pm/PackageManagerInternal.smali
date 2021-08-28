.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"

# interfaces
.implements Landroid/content/pm/PackageSettingsSnapshotProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;,
        Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;,
        Landroid/content/pm/PackageManagerInternal$PackageListObserver;,
        Landroid/content/pm/PackageManagerInternal$IntegrityVerificationResult;,
        Landroid/content/pm/PackageManagerInternal$PrivateResolveFlags;,
        Landroid/content/pm/PackageManagerInternal$KnownPackage;
    }
.end annotation


# static fields
.field public static final ENABLE_ROLLBACK_FAILED:I = -0x1

.field public static final ENABLE_ROLLBACK_SUCCEEDED:I = 0x1

.field public static final EXTRA_ENABLE_ROLLBACK_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

.field public static final EXTRA_ENABLE_ROLLBACK_TOKEN:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

.field public static final INTEGRITY_VERIFICATION_ALLOW:I = 0x1

.field public static final INTEGRITY_VERIFICATION_REJECT:I = 0x0

.field public static final LAST_KNOWN_PACKAGE:I = 0x10

.field public static final PACKAGE_APP_PREDICTOR:I = 0xb

.field public static final PACKAGE_BROWSER:I = 0x4

.field public static final PACKAGE_COMPANION:I = 0xe

.field public static final PACKAGE_CONFIGURATOR:I = 0x9

.field public static final PACKAGE_DOCUMENTER:I = 0x8

.field public static final PACKAGE_INCIDENT_REPORT_APPROVER:I = 0xa

.field public static final PACKAGE_INSTALLER:I = 0x2

.field public static final PACKAGE_OVERLAY_CONFIG_SIGNATURE:I = 0xc

.field public static final PACKAGE_PERMISSION_CONTROLLER:I = 0x6

.field public static final PACKAGE_RECENTS:I = 0x10

.field public static final PACKAGE_RETAIL_DEMO:I = 0xf

.field public static final PACKAGE_SETUP_WIZARD:I = 0x1

.field public static final PACKAGE_SYSTEM:I = 0x0

.field public static final PACKAGE_SYSTEM_TEXT_CLASSIFIER:I = 0x5

.field public static final PACKAGE_VERIFIER:I = 0x3

.field public static final PACKAGE_WELLBEING:I = 0x7

.field public static final PACKAGE_WIFI:I = 0xd

.field public static final RESOLVE_NON_BROWSER_ONLY:I = 0x1

.field public static final RESOLVE_NON_RESOLVER_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static knownPackageToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "knownPackage"    # I

    .line 1037
    packed-switch p0, :pswitch_data_0

    .line 1073
    const-string v0, "Unknown"

    return-object v0

    .line 1071
    :pswitch_0
    const-string v0, "Recents"

    return-object v0

    .line 1067
    :pswitch_1
    const-string v0, "Retail Demo"

    return-object v0

    .line 1065
    :pswitch_2
    const-string v0, "Companion"

    return-object v0

    .line 1063
    :pswitch_3
    const-string v0, "Wi-Fi"

    return-object v0

    .line 1069
    :pswitch_4
    const-string v0, "Overlay Config Signature"

    return-object v0

    .line 1061
    :pswitch_5
    const-string v0, "App Predictor"

    return-object v0

    .line 1059
    :pswitch_6
    const-string v0, "Incident Report Approver"

    return-object v0

    .line 1057
    :pswitch_7
    const-string v0, "Configurator"

    return-object v0

    .line 1055
    :pswitch_8
    const-string v0, "Documenter"

    return-object v0

    .line 1053
    :pswitch_9
    const-string v0, "Wellbeing"

    return-object v0

    .line 1051
    :pswitch_a
    const-string v0, "Permission Controller"

    return-object v0

    .line 1049
    :pswitch_b
    const-string v0, "System Text Classifier"

    return-object v0

    .line 1047
    :pswitch_c
    const-string v0, "Browser"

    return-object v0

    .line 1045
    :pswitch_d
    const-string v0, "Verifier"

    return-object v0

    .line 1043
    :pswitch_e
    const-string v0, "Installer"

    return-object v0

    .line 1041
    :pswitch_f
    const-string v0, "Setup Wizard"

    return-object v0

    .line 1039
    :pswitch_10
    const-string v0, "System"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract canAccessComponent(ILandroid/content/ComponentName;I)Z
.end method

.method public abstract canAccessInstantApps(II)Z
.end method

.method public abstract clearBlockUninstallForUser(I)V
.end method

.method public abstract compileLayouts(Ljava/lang/String;)Z
.end method

.method public abstract deleteOatArtifactsOfPackage(Ljava/lang/String;)J
.end method

.method public abstract filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
.end method

.method public abstract filterAppAccess(Ljava/lang/String;II)Z
.end method

.method public abstract finishPackageInstall(IZ)V
.end method

.method public abstract flushPackageRestrictions(I)V
.end method

.method public abstract forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract forEachPackage(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forEachPackageSetting(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract freeStorage(Ljava/lang/String;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledState(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCeDataInode(Ljava/lang/String;I)J
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;II)I
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDistractingPackageRestrictions(Ljava/lang/String;I)I
.end method

.method public abstract getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
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

.method public abstract getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;
.end method

.method public abstract getInstalledApplications(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getKnownPackageNames(II)[Ljava/lang/String;
.end method

.method public abstract getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getOverlayPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
.end method

.method public getPackageList()Lcom/android/server/pm/PackageList;
    .locals 1

    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
.end method

.method public abstract getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
.end method

.method public abstract getPackageTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getPackageUid(Ljava/lang/String;II)I
.end method

.method public abstract getPermissionGids(Ljava/lang/String;I)[I
.end method

.method public abstract getProcessesForUid(I)Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSetupWizardPackageName()Ljava/lang/String;
.end method

.method public abstract getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
.end method

.method public abstract getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getSystemUiServiceComponent()Landroid/content/ComponentName;
.end method

.method public abstract getTargetPackageNames(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantImplicitAccess(ILandroid/content/Intent;IIZ)V
.end method

.method public abstract hasInstantApplicationMetadata(Ljava/lang/String;I)Z
.end method

.method public abstract hasSignatureCapability(III)Z
.end method

.method public abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method public abstract isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
.end method

.method public abstract isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
.end method

.method public abstract isDataRestoreSafe([BLjava/lang/String;)Z
.end method

.method public abstract isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
.end method

.method public abstract isOnlyCoreApps()Z
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackageFrozen(Ljava/lang/String;II)Z
.end method

.method public abstract isPackagePersistent(Ljava/lang/String;)Z
.end method

.method public abstract isPackageStateProtected(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspended(Ljava/lang/String;I)Z
.end method

.method public abstract isPermissionUpgradeNeeded(I)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract isPlatformSigned(Ljava/lang/String;)Z
.end method

.method public abstract isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
.end method

.method public abstract isSuspendingAnyPackages(Ljava/lang/String;I)Z
.end method

.method public abstract isSystemPackage(Ljava/lang/String;)Z
.end method

.method public abstract migrateLegacyObbData()V
.end method

.method public abstract notifyPackageUse(Ljava/lang/String;I)V
.end method

.method public onDefaultSimCallManagerAppChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 170
    return-void
.end method

.method public onDefaultSmsAppChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 162
    return-void
.end method

.method public abstract pruneCachedApksInApex(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pruneInstantApps()V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z
.end method

.method public abstract removeAllDistractingPackageRestrictions(I)V
.end method

.method public abstract removeAllNonSystemPackageSuspensions(I)V
.end method

.method public abstract removeDistractingPackageRestrictions(Ljava/lang/String;I)V
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
.end method

.method public abstract removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
.end method

.method public abstract removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
.end method

.method public abstract requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
.end method

.method public abstract requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceOwnerProtectedPackages(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEnableRollbackCode(II)V
.end method

.method public abstract setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
.end method

.method public abstract setIntegrityVerificationResult(II)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVisibilityLogging(Ljava/lang/String;Z)V
.end method

.method public abstract uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
.end method

.method public abstract unsuspendForSuspendingPackage(Ljava/lang/String;I)V
.end method

.method public abstract updateRuntimePermissionsFingerprint(I)V
.end method

.method public abstract userNeedsBadging(I)Z
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method

.method public abstract writePermissionSettings([IZ)V
.end method

.method public abstract writeSettings(Z)V
.end method
