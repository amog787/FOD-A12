.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private mNumPackageSessionsWithSuccess:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private final mStagedSessionId:I

.field private mState:I

.field private mStateDescription:Ljava/lang/String;

.field private mTimestamp:Ljava/time/Instant;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILjava/io/File;IILjava/lang/String;)V
    .locals 8
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "stagedSessionId"    # I
    .param p4, "userId"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;

    .line 233
    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 235
    return-void
.end method

.method constructor <init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "stagedSessionId"    # I
    .param p4, "userId"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "packageSessionIds"    # [I
    .param p7, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 215
    new-instance v7, Landroid/content/rollback/RollbackInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 220
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 221
    iput-object p5, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 223
    iput p3, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    .line 224
    iput v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 225
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 226
    if-eqz p6, :cond_1

    move-object v0, p6

    goto :goto_1

    :cond_1
    new-array v0, v0, [I

    :goto_1
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 227
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p7

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "info"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "timestamp"    # Ljava/time/Instant;
    .param p4, "stagedSessionId"    # I
    .param p5, "state"    # I
    .param p6, "stateDescription"    # Ljava/lang/String;
    .param p7, "restoreUserDataInProgress"    # Z
    .param p8, "userId"    # I
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 243
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 244
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 245
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 247
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 248
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    .line 249
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 250
    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 251
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 252
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p10

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 257
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 258
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 259
    return-void
.end method

.method private static addAll(Ljava/util/List;[I)V
    .locals 2
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 435
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 436
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private assertInWorkerThread()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 263
    return-void
.end method

.method private containsApex()Z
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 942
    .local v1, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    const/4 v0, 0x1

    return v0

    .line 945
    .end local v1    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 946
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 8
    .param p0, "rollbackExtVers"    # Landroid/util/SparseIntArray;
    .param p1, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 904
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 905
    return v1

    .line 907
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 908
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 909
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 910
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 911
    .local v4, "minExtVers":Landroid/util/SparseIntArray;
    if-nez v4, :cond_1

    .line 912
    goto :goto_2

    .line 914
    :cond_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 915
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 916
    .local v6, "minExt":I
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_2

    .line 917
    const/4 v1, 0x1

    return v1

    .line 914
    .end local v6    # "minExt":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 908
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "minExtVers":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 888
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 886
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 885
    :pswitch_1
    return v1

    .line 884
    :pswitch_2
    return v2

    .line 883
    :pswitch_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58e10884 -> :sswitch_3
        -0x2bbe7537 -> :sswitch_2
        0x5c6a3019 -> :sswitch_1
        0x61e1ed80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 870
    packed-switch p0, :pswitch_data_0

    .line 876
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 874
    :pswitch_1
    const-string v0, "deleted"

    return-object v0

    .line 873
    :pswitch_2
    const-string v0, "committed"

    return-object v0

    .line 872
    :pswitch_3
    const-string v0, "available"

    return-object v0

    .line 871
    :pswitch_4
    const-string v0, "enabling"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .locals 3

    .line 930
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 932
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 933
    const/4 v1, 0x1

    return v1

    .line 930
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .locals 4

    .line 858
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "packagesWithoutApkInApex":I
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 861
    .local v2, "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-nez v3, :cond_0

    .line 862
    add-int/lit8 v0, v0, 0x1

    .line 864
    .end local v2    # "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 865
    :cond_1
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 500
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x2

    const-string v4, "Rollback unavailable"

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 505
    return-void

    .line 508
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 510
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v5, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 511
    const-string v5, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 513
    return-void

    .line 520
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_1
    :try_start_0
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 521
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 520
    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-virtual {v2, v6, v5, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v7, v0

    .line 526
    .local v7, "pkgContext":Landroid/content/Context;
    nop

    .line 528
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 530
    .local v8, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v9, v0

    .line 531
    .local v9, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v0

    .line 533
    .local v10, "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 534
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v0, :cond_2

    .line 536
    :try_start_2
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 673
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_0
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    goto/16 :goto_b

    .line 538
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_2
    :goto_0
    const/4 v11, 0x5

    :try_start_3
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 540
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    .line 541
    .local v12, "parentSessionId":I
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    .line 544
    .local v13, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 545
    .local v14, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v16, v0

    .line 546
    .local v16, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    goto :goto_1

    .line 553
    :cond_3
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v17, v0

    .line 555
    .local v17, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 556
    .local v18, "installerPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_4

    .line 557
    nop

    .line 558
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    goto :goto_2

    .line 556
    :cond_4
    move-object/from16 v5, v18

    .line 560
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .local v5, "installerPackageName":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_5

    .line 561
    move-object/from16 v11, v17

    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v11, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 560
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_5
    move-object/from16 v11, v17

    .line 563
    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_3
    :try_start_6
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 564
    nop

    .line 565
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    move-object/from16 v19, v5

    .end local v5    # "installerPackageName":Ljava/lang/String;
    .local v19, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    .line 564
    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 566
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v0, :cond_6

    .line 568
    :try_start_7
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 570
    :cond_6
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v0, :cond_7

    .line 571
    :try_start_9
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 573
    :cond_7
    :try_start_a
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v5, v0

    .line 574
    .local v5, "sessionId":I
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object/from16 v18, v0

    .line 575
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 576
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v27, v0

    .line 577
    .local v27, "packageCodePaths":[Ljava/io/File;
    move-object/from16 v4, v27

    .end local v27    # "packageCodePaths":[Ljava/io/File;
    .local v4, "packageCodePaths":[Ljava/io/File;
    if-nez v4, :cond_8

    .line 578
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Backup copy of package: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is inaccessible"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    const/4 v15, 0x1

    invoke-static {v2, v3, v15, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 581
    return-void

    .line 584
    :cond_8
    :try_start_c
    array-length v6, v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "pkgContext":Landroid/content/Context;
    .local v27, "pkgContext":Landroid/content/Context;
    :goto_4
    if-ge v7, v6, :cond_c

    :try_start_d
    aget-object v0, v4, v7

    move-object/from16 v28, v0

    .line 585
    .local v28, "packageCodePath":Ljava/io/File;
    const/high16 v0, 0x10000000

    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .end local v28    # "packageCodePath":Ljava/io/File;
    .local v4, "packageCodePath":Ljava/io/File;
    .local v29, "packageCodePaths":[Ljava/io/File;
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v28, v0

    .line 587
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-wide/from16 v30, v20

    .line 589
    .local v30, "token":J
    const/16 v20, 0x0

    .line 592
    .local v20, "fallbackToCopy":Z
    :try_start_f
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v32, v6

    move-object/from16 v6, v18

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v6, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_10
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 595
    move/from16 v0, v20

    goto :goto_6

    .line 602
    .end local v20    # "fallbackToCopy":Z
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 593
    .restart local v20    # "fallbackToCopy":Z
    :catch_1
    move-exception v0

    goto :goto_5

    .line 602
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20    # "fallbackToCopy":Z
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_7

    .line 593
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "fallbackToCopy":Z
    :catch_2
    move-exception v0

    move/from16 v32, v6

    move-object/from16 v6, v18

    .line 594
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "ignore":Ljava/lang/Exception;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_5
    const/16 v20, 0x1

    move/from16 v0, v20

    .line 596
    .end local v20    # "fallbackToCopy":Z
    .local v0, "fallbackToCopy":Z
    :goto_6
    if-eqz v0, :cond_9

    .line 597
    :try_start_11
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    .line 598
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 597
    move-object/from16 v20, v6

    move-object/from16 v26, v28

    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    .line 602
    .end local v0    # "fallbackToCopy":Z
    :goto_7
    :try_start_12
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    nop

    .end local v4    # "packageCodePath":Ljava/io/File;
    .end local v5    # "sessionId":I
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .end local v27    # "pkgContext":Landroid/content/Context;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v0

    .line 585
    .end local v30    # "token":J
    .restart local v4    # "packageCodePath":Ljava/io/File;
    .restart local v5    # "sessionId":I
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    .restart local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "packageCodePaths":[Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_2
    move-exception v0

    move-object v7, v0

    goto :goto_9

    .line 602
    .restart local v30    # "token":J
    :cond_9
    :goto_8
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 603
    nop

    .line 604
    .end local v30    # "token":J
    if-eqz v28, :cond_a

    :try_start_13
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    .line 584
    .end local v4    # "packageCodePath":Ljava/io/File;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v6

    move-object/from16 v4, v29

    move/from16 v6, v32

    goto :goto_4

    .line 585
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "packageCodePath":Ljava/io/File;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v0

    move-object/from16 v6, v18

    move-object v7, v0

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_9
    if-eqz v28, :cond_b

    :try_start_14
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v15, v0

    :try_start_15
    invoke-virtual {v7, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "pkgContext":Landroid/content/Context;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_b
    :goto_a
    throw v7

    .line 606
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    .local v4, "packageCodePaths":[Ljava/io/File;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_c
    move-object/from16 v29, v4

    move-object/from16 v6, v18

    .end local v4    # "packageCodePaths":[Ljava/io/File;
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v29    # "packageCodePaths":[Ljava/io/File;
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 607
    .end local v5    # "sessionId":I
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    move-object/from16 v6, p3

    move-object/from16 v7, v27

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x5

    goto/16 :goto_1

    .line 673
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "pkgContext":Landroid/content/Context;
    .restart local v7    # "pkgContext":Landroid/content/Context;
    :catch_3
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v4, p2

    goto :goto_b

    .line 610
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v27, v7

    .end local v7    # "pkgContext":Landroid/content/Context;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/RescueParty;->resetDeviceConfigForPackages(Ljava/util/List;)V

    .line 612
    new-instance v0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    move-object/from16 v4, p2

    :try_start_16
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 668
    .local v0, "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    new-instance v5, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v5, v0}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 669
    .local v5, "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    const/4 v6, 0x3

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 670
    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 671
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 672
    invoke-virtual {v5}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    .line 677
    .end local v0    # "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    .end local v5    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_c

    .line 673
    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_b

    .end local v27    # "pkgContext":Landroid/content/Context;
    .restart local v7    # "pkgContext":Landroid/content/Context;
    :catch_6
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    .line 674
    .end local v7    # "pkgContext":Landroid/content/Context;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    :goto_b
    const-string v5, "RollbackManager"

    const-string v6, "Rollback failed"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 678
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    return-void

    .line 522
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "pkgContext":Landroid/content/Context;
    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    .line 523
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Invalid callerPackageName"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 525
    return-void
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 471
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 472
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 475
    :cond_0
    return-void
.end method

.method containsSessionId(I)Z
    .locals 5
    .param p1, "packageSessionId"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 833
    .local v4, "id":I
    if-ne v4, p1, :cond_0

    .line 834
    const/4 v0, 0x1

    return v0

    .line 832
    .end local v4    # "id":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 837
    :cond_1
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;
    .param p2, "reason"    # Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "containsApex":Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 722
    .local v1, "apexUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 723
    .local v3, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v4

    .line 724
    .local v4, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    const/4 v0, 0x1

    .line 726
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 728
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 730
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 732
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 728
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 735
    .end local v3    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v4    # "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 736
    :cond_2
    if-eqz v0, :cond_3

    .line 737
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    .line 738
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 739
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexCeSnapshots(II)V

    .line 740
    .end local v3    # "user":I
    goto :goto_3

    .line 743
    :cond_3
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    .line 744
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 745
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 951
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stagedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 960
    :cond_0
    const-string v0, "-packages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 962
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 963
    .local v1, "pkg":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 966
    .end local v1    # "pkg":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 968
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 969
    const-string v0, "-causePackages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 971
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 972
    .local v1, "cPkg":Landroid/content/pm/VersionedPackage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 973
    .end local v1    # "cPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_1

    .line 974
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-committedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 978
    const-string v0, "-extensionVersions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 980
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 983
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 984
    return-void
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newVersion"    # J
    .param p4, "installedVersion"    # J
    .param p6, "isApex"    # Z
    .param p7, "sourceDir"    # Ljava/lang/String;
    .param p8, "splitSourceDirs"    # [Ljava/lang/String;
    .param p9, "rollbackDataPolicy"    # I

    .line 388
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 390
    const/4 v4, 0x0

    move-object/from16 v5, p7

    :try_start_0
    invoke-static {v1, v2, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    array-length v0, v3

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v7, v3, v6

    .line 393
    .local v7, "dir":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v7    # "dir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 399
    :cond_0
    nop

    .line 401
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v14, p2

    invoke-direct {v8, v2, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v12, p4

    invoke-direct {v9, v2, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    move/from16 v12, p6

    move v13, v4

    move-object v14, v6

    move/from16 v15, p9

    invoke-direct/range {v7 .. v15}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 407
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v4, 0x1

    return v4

    .line 396
    .end local v0    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to copy package for rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    return v4
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installedVersion"    # J
    .param p4, "rollbackDataPolicy"    # I

    .line 419
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 425
    new-instance v9, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 430
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v1, 0x1

    return v1
.end method

.method getApexPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 820
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 824
    :cond_1
    return-object v0
.end method

.method getBackupDir()Ljava/io/File;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 807
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 809
    :cond_0
    return-object v0
.end method

.method getStagedSessionId()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 1

    .line 893
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 894
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStateDescription()Ljava/lang/String;
    .locals 1

    .line 988
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 989
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-object v0
.end method

.method getTimestamp()Ljava/time/Instant;
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 287
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 773
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 774
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 775
    .local v1, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    const/4 v0, 0x1

    return v0

    .line 778
    .end local v1    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 779
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 788
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 789
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 790
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAvailable()Z
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 350
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isCommitted()Z
    .locals 2

    .line 358
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 359
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDeleted()Z
    .locals 2

    .line 367
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 368
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEnabling()Z
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 341
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRestoreUserDataInProgress()Z
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 754
    iget-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    return v0
.end method

.method isStaged()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$commit$0$Rollback(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 10
    .param p1, "result"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "causePackages"    # Ljava/util/List;

    .line 614
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 615
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 617
    .local v0, "status":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 625
    const-string v3, "Commit failed"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 626
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 627
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 628
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {p2, p3, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v3

    if-nez v3, :cond_1

    .line 639
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 642
    :cond_1
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    .line 644
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 648
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 649
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v4, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v3    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 653
    :catch_0
    move-exception v2

    .line 657
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v2, "broadcast":Landroid/content/Intent;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 660
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 661
    .local v4, "user":Landroid/os/UserHandle;
    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 664
    .end local v4    # "user":Landroid/os/UserHandle;
    goto :goto_1

    .line 665
    :cond_2
    return-void
.end method

.method public synthetic lambda$commit$1$Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "causePackages"    # Ljava/util/List;
    .param p4, "result"    # Landroid/content/Intent;

    .line 613
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    return-void
.end method

.method makeAvailable()V
    .locals 2

    .line 484
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "RollbackManager"

    const-string v1, "Cannot make deleted rollback available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 490
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 491
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 492
    return-void
.end method

.method notifySessionWithSuccess()Z
    .locals 3

    .line 847
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 848
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 690
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 691
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 692
    return v3

    .line 695
    :cond_0
    const/4 v2, 0x0

    .line 696
    .local v2, "foundPackage":Z
    iget-object v4, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 697
    .local v5, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 698
    const/4 v2, 0x1

    .line 699
    const/4 v4, 0x0

    .line 700
    .local v4, "changedRollback":Z
    array-length v13, v1

    :goto_1
    if-ge v3, v13, :cond_1

    aget v14, v1, v3

    .line 701
    .local v14, "userId":I
    iget-object v6, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 702
    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    .line 701
    move-object/from16 v6, p5

    move-object v8, v5

    move v9, v14

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 700
    .end local v14    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 705
    :cond_1
    if-eqz v4, :cond_4

    .line 706
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_2

    .line 710
    .end local v4    # "changedRollback":Z
    .end local v5    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_2
    goto :goto_0

    .line 696
    :cond_3
    move-object/from16 v12, p1

    .line 711
    :cond_4
    :goto_2
    return v2
.end method

.method saveRollback()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 377
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 378
    return-void
.end method

.method setRestoreUserDataInProgress(Z)V
    .locals 0
    .param p1, "restoreUserDataInProgress"    # Z

    .line 763
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 764
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 765
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 766
    return-void
.end method

.method setState(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 994
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 995
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 996
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 997
    return-void
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/time/Instant;

    .line 295
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 296
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 297
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 298
    return-void
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 446
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 447
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 452
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    .line 456
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/rollback/Rollback;->addAll(Ljava/util/List;[I)V

    .line 457
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_1

    .line 461
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_0

    .line 462
    :cond_2
    :goto_1
    return-void
.end method
