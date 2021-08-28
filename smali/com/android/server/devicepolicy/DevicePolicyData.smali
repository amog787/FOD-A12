.class Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyData.java"


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_DEVICE_PAIRED:Ljava/lang/String; = "device-paired"

.field private static final ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED:Ljava/lang/String; = "device-provisioning-config-applied"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_FACTORY_RESET_FLAGS:Ljava/lang/String; = "factory-reset-flags"

.field private static final ATTR_FACTORY_RESET_REASON:Ljava/lang/String; = "factory-reset-reason"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NEW_USER_DISCLAIMER:Ljava/lang/String; = "new-user-disclaimer"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_PROVISIONING_STATE:Ljava/lang/String; = "provisioning-state"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final FACTORY_RESET_FLAG_ON_BOOT:I = 0x1

.field public static final FACTORY_RESET_FLAG_WIPE_EUICC:I = 0x4

.field public static final FACTORY_RESET_FLAG_WIPE_EXTERNAL_STORAGE:I = 0x2

.field public static final FACTORY_RESET_FLAG_WIPE_FACTORY_RESET_PROTECTION:I = 0x8

.field static final NEW_USER_DISCLAIMER_NEEDED:Ljava/lang/String; = "needed"

.field static final NEW_USER_DISCLAIMER_NOT_NEEDED:Ljava/lang/String; = "not_needed"

.field static final NEW_USER_DISCLAIMER_SHOWN:Ljava/lang/String; = "shown"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final TAG_ACCEPTED_CA_CERTIFICATES:Ljava/lang/String; = "accepted-ca-certificate"

.field private static final TAG_ADMIN_BROADCAST_PENDING:Ljava/lang/String; = "admin-broadcast-pending"

.field private static final TAG_AFFILIATION_ID:Ljava/lang/String; = "affiliation-id"

.field private static final TAG_APPS_SUSPENDED:Ljava/lang/String; = "apps-suspended"

.field private static final TAG_CURRENT_INPUT_METHOD_SET:Ljava/lang/String; = "current-ime-set"

.field private static final TAG_DO_NOT_ASK_CREDENTIALS_ON_BOOT:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final TAG_INITIALIZATION_BUNDLE:Ljava/lang/String; = "initialization-bundle"

.field private static final TAG_LAST_BUG_REPORT_REQUEST:Ljava/lang/String; = "last-bug-report-request"

.field private static final TAG_LAST_NETWORK_LOG_RETRIEVAL:Ljava/lang/String; = "last-network-log-retrieval"

.field private static final TAG_LAST_SECURITY_LOG_RETRIEVAL:Ljava/lang/String; = "last-security-log-retrieval"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_LOCK_TASK_FEATURES:Ljava/lang/String; = "lock-task-features"

.field private static final TAG_OWNER_INSTALLED_CA_CERT:Ljava/lang/String; = "owner-installed-ca-cert"

.field private static final TAG_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password-token"

.field private static final TAG_PASSWORD_VALIDITY:Ljava/lang/String; = "password-validity"

.field private static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected-packages"

.field private static final TAG_SECONDARY_LOCK_SCREEN:Ljava/lang/String; = "secondary-lock-screen"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z = false


# instance fields
.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppsSuspended:Z

.field mCurrentInputMethodSet:Z

.field final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDeviceProvisioningConfigApplied:Z

.field mDoNotAskCredentialsOnBoot:Z

.field mFactoryResetFlags:I

.field mFactoryResetReason:Ljava/lang/String;

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastBugReportRequestTime:J

.field mLastMaximumTimeToLock:J

.field mLastNetworkLogsRetrievalTime:J

.field mLastSecurityLogRetrievalTime:J

.field mLockTaskFeatures:I

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNewUserDisclaimer:Ljava/lang/String;

.field mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaired:Z

.field mPasswordOwner:I

.field mPasswordTokenHandle:J

.field mPasswordValidAtLastCheckpoint:Z

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mSecondaryLockscreenEnabled:Z

.field mStatusBarDisabled:Z

.field mUserControlDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 107
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 108
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 118
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 123
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 133
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 135
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 140
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 142
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 144
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 146
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 148
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 150
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 152
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 157
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 160
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 163
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 167
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 171
    const-string/jumbo v0, "not_needed"

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 174
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 175
    return-void
.end method

.method static factoryResetFlagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 660
    const-class v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    const-string v1, "FACTORY_RESET_FLAG_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .locals 22
    .param p0, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "isFdeDevice"    # Z
    .param p2, "journaledFile"    # Lcom/android/internal/util/JournaledFile;
    .param p4, "ownerComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            "Z",
            "Lcom/android/internal/util/JournaledFile;",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 405
    .local p3, "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "DevicePolicyManager"

    const/4 v3, 0x0

    .line 406
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 408
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 410
    .local v5, "needsRewrite":Z
    const/4 v7, 0x1

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_e

    move-object v3, v8

    .line 411
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v8

    .line 414
    .local v8, "parser":Landroid/util/TypedXmlPullParser;
    :goto_0
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    if-eq v9, v7, :cond_0

    const/4 v9, 0x2

    if-eq v10, v9, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v11, "policies"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 424
    const-string/jumbo v11, "permission-provider"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c

    .line 425
    .local v11, "permissionProvider":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 426
    nop

    .line 427
    :try_start_2
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 567
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    goto/16 :goto_9

    .line 565
    :catch_1
    move-exception v0

    move/from16 v16, v5

    goto/16 :goto_a

    .line 429
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    const-string/jumbo v13, "setup-complete"

    invoke-interface {v8, v12, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 430
    .local v13, "userSetupComplete":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_c

    if-eqz v14, :cond_2

    .line 432
    :try_start_4
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 434
    :cond_2
    :try_start_5
    const-string v14, "device-paired"

    invoke-interface {v8, v12, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 435
    .local v14, "paired":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v15, :cond_3

    .line 436
    :try_start_6
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 438
    :cond_3
    :try_start_7
    const-string v15, "device-provisioning-config-applied"

    invoke-interface {v8, v12, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "deviceProvisioningConfigApplied":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_c

    if-eqz v6, :cond_4

    .line 441
    :try_start_8
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 443
    :cond_4
    :try_start_9
    const-string/jumbo v6, "provisioning-state"

    const/4 v7, -0x1

    invoke-interface {v8, v12, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_c

    .line 444
    .local v6, "provisioningState":I
    if-eq v6, v7, :cond_5

    .line 445
    :try_start_a
    iput v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    .line 447
    :cond_5
    :try_start_b
    const-string/jumbo v7, "permission-policy"
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v17, v3

    const/4 v3, -0x1

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_c
    invoke-interface {v8, v12, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_8

    .line 448
    .local v7, "permissionPolicy":I
    if-eq v7, v3, :cond_6

    .line 449
    :try_start_d
    iput v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_2

    .line 567
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v13    # "userSetupComplete":Ljava/lang/String;
    .end local v14    # "paired":Ljava/lang/String;
    .end local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    move-object v5, v0

    goto/16 :goto_9

    .line 565
    :catch_3
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    goto/16 :goto_a

    .line 451
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "userSetupComplete":Ljava/lang/String;
    .restart local v14    # "paired":Ljava/lang/String;
    .restart local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :cond_6
    :goto_2
    :try_start_e
    const-string/jumbo v3, "new-user-disclaimer"

    invoke-interface {v8, v12, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 453
    const-string v3, "factory-reset-flags"
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_8

    move/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "needsRewrite":Z
    .local v16, "needsRewrite":Z
    :try_start_f
    invoke-interface {v8, v12, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 458
    const-string v3, "factory-reset-reason"

    invoke-interface {v8, v12, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 460
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 461
    .local v3, "outerDepth":I
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 462
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 463
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 464
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 465
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 466
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 467
    :goto_3
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v10, v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_25

    const/4 v5, 0x3

    if-ne v10, v5, :cond_7

    .line 468
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_26

    .line 469
    :cond_7
    if-eq v10, v5, :cond_24

    const/4 v5, 0x4

    if-ne v10, v5, :cond_8

    .line 470
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 472
    :cond_8
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 473
    const-string v5, "admin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_a

    const-string/jumbo v12, "name"

    if-eqz v5, :cond_b

    .line 474
    const/4 v5, 0x0

    :try_start_10
    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_a

    move-object v5, v12

    .line 476
    .local v5, "name":Ljava/lang/String;
    nop

    .line 477
    :try_start_11
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_a

    .line 476
    move/from16 v18, v3

    move-object/from16 v3, p3

    .end local v3    # "outerDepth":I
    .local v18, "outerDepth":I
    :try_start_12
    invoke-interface {v3, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DeviceAdminInfo;

    .line 479
    .local v12, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v12, :cond_a

    .line 483
    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_a

    move/from16 v19, v6

    move-object/from16 v6, p4

    .end local v6    # "provisioningState":I
    .local v19, "provisioningState":I
    :try_start_13
    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 484
    .local v3, "overwritePolicies":Z
    :goto_4
    new-instance v6, Lcom/android/server/devicepolicy/ActiveAdmin;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_a

    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "permissionPolicy":I
    .local v20, "permissionPolicy":I
    :try_start_14
    invoke-direct {v6, v12, v7}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 485
    .local v6, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    invoke-virtual {v6, v8, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    .line 486
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    move/from16 v21, v3

    .end local v3    # "overwritePolicies":Z
    .local v21, "overwritePolicies":Z
    iget-object v3, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_a

    goto :goto_5

    .line 488
    .end local v6    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .end local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .end local v21    # "overwritePolicies":Z
    :catch_4
    move-exception v0

    move-object v3, v0

    goto :goto_6

    .end local v20    # "permissionPolicy":I
    .restart local v7    # "permissionPolicy":I
    :catch_5
    move-exception v0

    move/from16 v20, v7

    move-object v3, v0

    .end local v7    # "permissionPolicy":I
    .restart local v20    # "permissionPolicy":I
    goto :goto_6

    .line 479
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v6, "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    .restart local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :cond_a
    move/from16 v19, v6

    move/from16 v20, v7

    .line 490
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_5
    goto :goto_7

    .line 488
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :catch_6
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    move-object v3, v0

    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    goto :goto_6

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :catch_7
    move-exception v0

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move-object v3, v0

    .line 489
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .local v3, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_6
    :try_start_15
    const-string v6, "Failed loading admin %s"

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v12, v7

    invoke-static {v2, v3, v6, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "name":Ljava/lang/String;
    :goto_7
    const/4 v6, 0x0

    goto/16 :goto_8

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_b
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    const-string v3, "delegation"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 493
    const-string v3, "delegatePackage"

    const/4 v5, 0x0

    invoke-interface {v8, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "delegatePackage":Ljava/lang/String;
    const-string/jumbo v6, "scope"

    invoke-interface {v8, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 498
    .local v5, "scope":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 500
    .local v6, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_c

    .line 501
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 502
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_c
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 506
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v3    # "delegatePackage":Ljava/lang/String;
    .end local v5    # "scope":Ljava/lang/String;
    .end local v6    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_e
    const-string v3, "failed-password-attempts"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_a

    const-string/jumbo v5, "value"

    if-eqz v3, :cond_f

    .line 509
    const/4 v3, 0x0

    :try_start_16
    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 510
    :cond_f
    const-string/jumbo v3, "password-owner"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 511
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 512
    :cond_10
    const-string v3, "accepted-ca-certificate"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 513
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 514
    :cond_11
    const-string/jumbo v3, "lock-task-component"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 515
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 516
    :cond_12
    const-string/jumbo v3, "lock-task-features"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 517
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 518
    :cond_13
    const-string/jumbo v3, "secondary-lock-screen"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 519
    nop

    .line 520
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 521
    :cond_14
    const-string/jumbo v3, "statusbar"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 522
    const-string v3, "disabled"

    .line 523
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 524
    :cond_15
    const-string v3, "do-not-ask-credentials-on-boot"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 525
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 526
    :cond_16
    const-string v3, "affiliation-id"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 527
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string v5, "id"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 528
    :cond_17
    const-string/jumbo v3, "last-security-log-retrieval"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 529
    nop

    .line 530
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 531
    :cond_18
    const-string/jumbo v3, "last-bug-report-request"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 532
    nop

    .line 533
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 534
    :cond_19
    const-string/jumbo v3, "last-network-log-retrieval"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 535
    nop

    .line 536
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 537
    :cond_1a
    const-string v3, "admin-broadcast-pending"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 538
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 539
    .local v3, "pending":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 540
    .end local v3    # "pending":Ljava/lang/String;
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1b
    const-string v3, "initialization-bundle"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 541
    invoke-static {v8}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 542
    :cond_1c
    const-string/jumbo v3, "password-validity"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 543
    if-eqz p1, :cond_1d

    .line 545
    nop

    .line 546
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 543
    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 548
    :cond_1e
    const-string/jumbo v3, "password-token"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 549
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    const/4 v6, 0x0

    goto :goto_8

    .line 550
    :cond_1f
    const-string v3, "current-ime-set"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 551
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    const/4 v6, 0x0

    goto :goto_8

    .line 552
    :cond_20
    const-string/jumbo v3, "owner-installed-ca-cert"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 553
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string v5, "alias"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_8

    .line 554
    :cond_21
    const-string/jumbo v3, "protected-packages"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 555
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 556
    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_8

    .line 557
    :cond_22
    const-string v3, "apps-suspended"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 558
    nop

    .line 559
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    goto :goto_8

    .line 561
    :cond_23
    const/4 v6, 0x0

    const-string v3, "Unknown tag: %s"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-static {v2, v3, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    .line 469
    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .local v6, "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_24
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v6, 0x0

    .line 467
    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_8
    move-object v12, v6

    move/from16 v3, v18

    move/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_3

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .restart local v3    # "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_25
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    .line 570
    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v13    # "userSetupComplete":Ljava/lang/String;
    .end local v14    # "paired":Ljava/lang/String;
    .end local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :cond_26
    move-object/from16 v3, v17

    goto :goto_b

    .line 567
    .end local v16    # "needsRewrite":Z
    .local v5, "needsRewrite":Z
    :catch_8
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    goto :goto_9

    .line 565
    .end local v16    # "needsRewrite":Z
    .restart local v5    # "needsRewrite":Z
    :catch_9
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    goto :goto_a

    .line 419
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_27
    move-object/from16 v17, v3

    move/from16 v16, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings do not start with policies tag: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "file":Ljava/io/File;
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .end local p1    # "isFdeDevice":Z
    .end local p2    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .end local p3    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .end local p4    # "ownerComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_a

    .line 567
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .restart local p1    # "isFdeDevice":Z
    .restart local p2    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .restart local p3    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .restart local p4    # "ownerComponent":Landroid/content/ComponentName;
    :catch_a
    move-exception v0

    move-object v5, v0

    move-object/from16 v3, v17

    goto :goto_9

    .line 565
    :catch_b
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_a

    .line 567
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_c
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v5

    move-object v5, v0

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 565
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_d
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 567
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_e
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    .line 569
    .local v5, "e":Ljava/lang/Exception;
    .restart local v16    # "needsRewrite":Z
    :goto_9
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v7, "failed parsing %s"

    invoke-static {v2, v5, v7, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 565
    .end local v16    # "needsRewrite":Z
    .local v5, "needsRewrite":Z
    :catch_f
    move-exception v0

    move/from16 v16, v5

    .line 570
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    :goto_a
    nop

    .line 572
    :goto_b
    if-eqz v3, :cond_28

    .line 573
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    goto :goto_c

    .line 575
    :catch_10
    move-exception v0

    goto :goto_d

    .line 577
    :cond_28
    :goto_c
    nop

    .line 580
    :goto_d
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    return-void
.end method

.method static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z
    .locals 29
    .param p0, "policyData"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "file"    # Lcom/android/internal/util/JournaledFile;
    .param p2, "isFdeDevice"    # Z

    .line 181
    move-object/from16 v1, p0

    const-string/jumbo v0, "last-network-log-retrieval"

    const-string/jumbo v2, "last-bug-report-request"

    const-string v3, "affiliation-id"

    const-string/jumbo v4, "last-security-log-retrieval"

    const-string v5, "do-not-ask-credentials-on-boot"

    const-string/jumbo v6, "statusbar"

    const-string/jumbo v7, "secondary-lock-screen"

    const-string/jumbo v8, "lock-task-component"

    const-string/jumbo v9, "lock-task-features"

    const-string v10, "accepted-ca-certificate"

    const-string v11, "delegation"

    const-string/jumbo v12, "password-validity"

    const-string v13, "admin"

    const-string v14, "failed-password-attempts"

    const-string/jumbo v15, "password-owner"

    move-object/from16 v16, v0

    const-string/jumbo v0, "policies"

    const/16 v17, 0x0

    .line 182
    .local v17, "stream":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 184
    .local v18, "chooseForWrite":Ljava/io/File;
    move-object/from16 v19, v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v20

    move-object/from16 v18, v20

    .line 188
    new-instance v2, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    const/4 v3, 0x0

    .end local v18    # "chooseForWrite":Ljava/io/File;
    .local v4, "chooseForWrite":Ljava/io/File;
    :try_start_1
    invoke-direct {v2, v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v17, v2

    .line 189
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    move-object/from16 v18, v4

    const/4 v3, 0x1

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 194
    const-string/jumbo v3, "permission-provider"

    .line 195
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 194
    move-object/from16 v23, v0

    const/4 v0, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 193
    :cond_0
    move-object/from16 v23, v0

    .line 197
    :goto_0
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "setup-complete"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "device-paired"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v0, :cond_3

    .line 205
    const-string v0, "device-provisioning-config-applied"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_3
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v0, :cond_4

    .line 208
    const-string/jumbo v3, "provisioning-state"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    :cond_4
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v0, :cond_5

    .line 211
    const-string/jumbo v3, "permission-policy"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_5
    const-string/jumbo v0, "needed"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    const-string/jumbo v0, "new-user-disclaimer"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_6
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v0, :cond_7

    .line 222
    const-string v3, "factory-reset-flags"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_7
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 225
    const-string v3, "factory-reset-reason"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 230
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    .local v3, "delegatePackage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 234
    .local v4, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v26, v25

    .line 235
    .local v26, "scope":Ljava/lang/String;
    move-object/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v4, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const-string v4, "delegatePackage"

    move-object/from16 v27, v5

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const-string/jumbo v4, "scope"

    move-object/from16 v28, v3

    move-object/from16 v3, v26

    .end local v26    # "scope":Ljava/lang/String;
    .local v3, "scope":Ljava/lang/String;
    .local v28, "delegatePackage":Ljava/lang/String;
    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    move-object/from16 v4, v25

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    .end local v3    # "scope":Ljava/lang/String;
    goto :goto_2

    .line 234
    .end local v25    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "delegatePackage":Ljava/lang/String;
    .local v3, "delegatePackage":Ljava/lang/String;
    .restart local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v28, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    .line 229
    .end local v3    # "delegatePackage":Ljava/lang/String;
    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move-object/from16 v27, v5

    .line 242
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    .local v0, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    const-string/jumbo v4, "name"

    if-ge v3, v0, :cond_c

    .line 244
    :try_start_3
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 245
    .local v5, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v5, :cond_b

    .line 246
    const/4 v11, 0x0

    invoke-interface {v2, v11, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    iget-object v11, v5, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    move/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "n":I
    .local v24, "n":I
    invoke-interface {v2, v0, v4, v11}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-virtual {v5, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 249
    invoke-interface {v2, v0, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 245
    .end local v24    # "n":I
    .restart local v0    # "n":I
    :cond_b
    move/from16 v24, v0

    .line 243
    .end local v0    # "n":I
    .end local v5    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .restart local v24    # "n":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v24

    goto :goto_3

    .end local v24    # "n":I
    .restart local v0    # "n":I
    :cond_c
    move/from16 v24, v0

    .line 253
    .end local v0    # "n":I
    .end local v3    # "i":I
    .restart local v24    # "n":I
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const-string/jumbo v3, "value"

    if-ltz v0, :cond_d

    .line 254
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {v2, v0, v15}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    invoke-interface {v2, v0, v15}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    :cond_d
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v0, :cond_e

    .line 260
    const/4 v0, 0x0

    invoke-interface {v2, v0, v14}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    invoke-interface {v2, v0, v14}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    :cond_e
    if-eqz p2, :cond_f

    .line 269
    const/4 v0, 0x0

    invoke-interface {v2, v0, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    invoke-interface {v2, v0, v12}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v0, v5, :cond_10

    .line 275
    const/4 v5, 0x0

    invoke-interface {v2, v5, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v2, v11, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 280
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 281
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 282
    .local v5, "component":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v2, v10, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    invoke-interface {v2, v10, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    invoke-interface {v2, v10, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    nop

    .end local v5    # "component":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 287
    .end local v0    # "i":I
    :cond_11
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v0, :cond_12

    .line 288
    const/4 v0, 0x0

    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    :cond_12
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v0, :cond_13

    .line 294
    const/4 v0, 0x0

    invoke-interface {v2, v0, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const/4 v5, 0x1

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-interface {v2, v0, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_13
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v0, :cond_14

    .line 300
    const/4 v0, 0x0

    invoke-interface {v2, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    const-string v5, "disabled"

    iget-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v2, v0, v5, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    invoke-interface {v2, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    :cond_14
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v0, :cond_15

    .line 306
    move-object/from16 v0, v27

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_15
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 311
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v6, v22

    const/4 v7, 0x0

    invoke-interface {v2, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    const-string v8, "id"

    invoke-interface {v2, v7, v8, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    invoke-interface {v2, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    move-object/from16 v22, v6

    .end local v5    # "id":Ljava/lang/String;
    goto :goto_7

    .line 316
    :cond_16
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_17

    .line 317
    move-object/from16 v0, v21

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    iget-wide v9, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v2, v5, v3, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    :cond_17
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_18

    .line 323
    move-object/from16 v0, v19

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    iget-wide v9, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v2, v5, v3, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    :cond_18
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_19

    .line 329
    move-object/from16 v0, v16

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    iget-wide v9, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v2, v5, v3, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_19
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v0, :cond_1a

    .line 335
    const-string v0, "admin-broadcast-pending"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v2, v5, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    const-string v0, "admin-broadcast-pending"

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    :cond_1a
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1b

    .line 341
    const-string v0, "initialization-bundle"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 343
    const-string v0, "initialization-bundle"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    :cond_1b
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1c

    .line 347
    const-string/jumbo v0, "password-token"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    iget-wide v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v2, v5, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    const-string/jumbo v0, "password-token"

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    :cond_1c
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v0, :cond_1d

    .line 353
    const-string v0, "current-ime-set"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const-string v0, "current-ime-set"

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :cond_1d
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 358
    .local v5, "cert":Ljava/lang/String;
    const-string/jumbo v6, "owner-installed-ca-cert"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string v6, "alias"

    invoke-interface {v2, v7, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    const-string/jumbo v6, "owner-installed-ca-cert"

    invoke-interface {v2, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    nop

    .end local v5    # "cert":Ljava/lang/String;
    goto :goto_8

    .line 363
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_9
    if-ge v0, v5, :cond_1f

    .line 364
    iget-object v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 365
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "protected-packages"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    invoke-interface {v2, v8, v4, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string/jumbo v7, "protected-packages"

    invoke-interface {v2, v8, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    nop

    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 370
    .end local v0    # "i":I
    .end local v5    # "size":I
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v0, :cond_20

    .line 371
    const-string v0, "apps-suspended"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v0, "apps-suspended"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    :cond_20
    move-object/from16 v0, v23

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 379
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 380
    invoke-static/range {v17 .. v17}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 381
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 383
    const/4 v3, 0x1

    return v3

    .line 384
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v18    # "chooseForWrite":Ljava/io/File;
    .end local v24    # "n":I
    .local v4, "chooseForWrite":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    goto :goto_a

    :catch_1
    move-exception v0

    :goto_a
    move-object v2, v0

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v0, v3

    const-string v3, "DevicePolicyManager"

    const-string v4, "failed writing file %s"

    invoke-static {v3, v2, v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    if-eqz v17, :cond_21

    .line 388
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 390
    :catch_2
    move-exception v0

    goto :goto_c

    .line 392
    :cond_21
    :goto_b
    nop

    .line 393
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 394
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 617
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 621
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 622
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 623
    .local v2, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 625
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 626
    const-string v3, ":"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 628
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 629
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 630
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 621
    .end local v2    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 634
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Device Admins (User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 638
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 639
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 640
    const-string/jumbo v1, "mPasswordOwner="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 641
    const-string/jumbo v1, "mUserControlDisabledPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 643
    const-string/jumbo v1, "mAppsSuspended="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 644
    const-string/jumbo v1, "mUserSetupComplete="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 645
    const-string/jumbo v1, "mAffiliationIds="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    const-string/jumbo v1, "mNewUserDisclaimer="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 647
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v1, :cond_3

    .line 648
    const-string/jumbo v1, "mFactoryResetFlags="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 649
    const-string v1, " ("

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyData;->factoryResetFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 651
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 653
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 654
    const-string/jumbo v1, "mFactoryResetReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 656
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 657
    return-void
.end method

.method setDelayedFactoryReset(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wipeExtRequested"    # Z
    .param p3, "wipeEuicc"    # Z
    .param p4, "wipeResetProtectionData"    # Z

    .line 602
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 604
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 605
    if-eqz p2, :cond_0

    .line 606
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 608
    :cond_0
    if-eqz p3, :cond_1

    .line 609
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 611
    :cond_1
    if-eqz p4, :cond_2

    .line 612
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 614
    :cond_2
    return-void
.end method

.method validatePasswordOwner()V
    .locals 5

    .line 584
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_2

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "haveOwner":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 587
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v3, v4, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 589
    goto :goto_1

    .line 586
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 593
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 594
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 593
    const-string v2, "DevicePolicyManager"

    const-string v3, "Previous password owner %s no longer active; disabling"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 598
    .end local v0    # "haveOwner":Z
    :cond_2
    return-void
.end method
