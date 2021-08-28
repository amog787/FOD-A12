.class Lcom/android/server/pm/PackageManagerService$VerificationParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerificationParams"
.end annotation


# instance fields
.field final installFlags:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field final mDataLoaderType:I

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentVerificationParams:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

.field private mRet:I

.field final mSessionId:I

.field private mWaitForEnableRollbackToComplete:Z

.field private mWaitForIntegrityVerificationToComplete:Z

.field private mWaitForVerificationToComplete:Z

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "stagedDir"    # Ljava/io/File;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p6, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p7, "installerUid"    # I
    .param p8, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p9, "sessionId"    # I
    .param p10, "lite"    # Landroid/content/pm/parsing/PackageLite;

    .line 18107
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18108
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 18109
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 18110
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 18111
    iget v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    .line 18112
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 18113
    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->packageAbiOverride:Ljava/lang/String;

    .line 18114
    new-instance v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {v0, v1, v2, v3, p7}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 18120
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 18121
    iget-wide v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->requiredInstalledVersionCode:J

    .line 18122
    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    .line 18123
    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    .line 18124
    iput p9, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mSessionId:I

    .line 18125
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 18126
    return-void
.end method

.method private sendVerificationCompleteNotification()V
    .locals 5

    .line 18497
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

    if-eqz v0, :cond_0

    .line 18498
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->trySendVerificationCompleteNotification(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    goto :goto_0

    .line 18501
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    const-string v3, "Package Verification Result"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18505
    goto :goto_0

    .line 18503
    :catch_0
    move-exception v0

    .line 18504
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18507
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method handleIntegrityVerificationFinished()V
    .locals 1

    .line 18475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    .line 18476
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    .line 18477
    return-void
.end method

.method handleReturnCode()V
    .locals 1

    .line 18489
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18493
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendVerificationCompleteNotification()V

    .line 18494
    return-void

    .line 18491
    :cond_1
    :goto_0
    return-void
.end method

.method handleRollbackEnabled()V
    .locals 1

    .line 18483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    .line 18484
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    .line 18485
    return-void
.end method

.method public handleStartCopy()V
    .locals 6

    .line 18135
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 18138
    iput v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    .line 18139
    return-void

    .line 18142
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 18145
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->requiredInstalledVersionCode:J

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;JI)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    .line 18146
    if-eq v2, v1, :cond_1

    .line 18147
    return-void

    .line 18152
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v1, :cond_2

    .line 18153
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    .line 18154
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 18155
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendEnableRollbackRequest()V

    .line 18158
    :cond_2
    return-void
.end method

.method handleVerificationFinished()V
    .locals 1

    .line 18470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    .line 18471
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    .line 18472
    return-void
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 18438
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18441
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_3

    .line 18442
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 18443
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18446
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 18447
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18450
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v0, :cond_2

    .line 18451
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18454
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v0, :cond_3

    .line 18455
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18459
    :cond_3
    return-void
.end method

.method sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .locals 3
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 18161
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5908(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    .line 18163
    .local v0, "verificationId":I
    new-instance v1, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;)V

    .line 18165
    .local v1, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 18167
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 18168
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    .line 18172
    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18173
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 18175
    :cond_0
    return-void
.end method

.method sendEnableRollbackRequest()V
    .locals 12

    .line 18178
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6008(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    .line 18179
    .local v0, "enableRollbackToken":I
    const-wide/32 v1, 0x40000

    const-string v3, "enable_rollback"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18181
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 18183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18184
    .local v1, "enableRollbackIntent":Landroid/content/Intent;
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18187
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mSessionId:I

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18190
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18191
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18198
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18200
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;

    invoke-direct {v7, p0, v0}, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const-string v6, "android.permission.PACKAGE_ROLLBACK_AGENT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 18221
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    .line 18222
    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 19
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 18231
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 18233
    move-object/from16 v3, p3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 18235
    return-void

    .line 18238
    :cond_0
    move-object/from16 v3, p3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18241
    .local v5, "integrityVerification":Landroid/content/Intent;
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 18244
    const v6, 0x50000001

    .line 18247
    .local v6, "flags":I
    const v7, 0x50000001

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18249
    const-string v7, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18250
    iget-object v7, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18251
    iget v7, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v8, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18252
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v7

    const-string v9, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v5, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 18253
    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 18256
    const-string v7, "android"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18258
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v18

    .line 18260
    .local v18, "options":Landroid/app/BroadcastOptions;
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 18263
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    new-instance v13, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;

    invoke-direct {v13, v0, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 18260
    move-object v8, v5

    invoke-virtual/range {v7 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 18277
    const-wide/32 v7, 0x40000

    const-string v9, "integrity_verification"

    invoke-static {v7, v8, v9, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18281
    iput-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    .line 18282
    return-void
.end method

.method sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
    .locals 34
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 18292
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 18296
    .local v4, "ret":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 18297
    .local v5, "verifierUser":Landroid/os/UserHandle;
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v5, v6, :cond_0

    .line 18298
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 18305
    :cond_0
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v7, -0x1

    const/high16 v8, 0x10000000

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    .line 18306
    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 18307
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 18306
    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_0
    move v15, v6

    .line 18308
    .local v15, "requiredUid":I
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    .line 18310
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_1
    move v14, v7

    .line 18311
    .local v14, "installerUid":I
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18312
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    .line 18311
    invoke-static {v6, v2, v7, v9, v14}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;III)Z

    move-result v17

    .line 18313
    .local v17, "isVerificationEnabled":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v13, 0x1

    if-ne v6, v7, :cond_3

    move v6, v13

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_2
    move/from16 v18, v6

    .line 18315
    .local v18, "isV4Signed":Z
    iget v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v9, v13

    :cond_4
    move/from16 v19, v9

    .line 18319
    .local v19, "isIncrementalInstall":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_b

    if-eqz v17, :cond_b

    if-eqz v19, :cond_6

    if-nez v18, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v20, v4

    move v6, v13

    move/from16 v21, v14

    move/from16 v33, v15

    goto/16 :goto_8

    .line 18322
    :cond_6
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v6

    .line 18324
    .local v12, "verification":Landroid/content/Intent;
    invoke-virtual {v12, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18325
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 18327
    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18330
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v23, 0x0

    .line 18331
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    const/16 v25, 0x0

    .line 18330
    const-string v22, "application/vnd.android.package-archive"

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    .line 18340
    .local v11, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v12, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18342
    iget v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18345
    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18348
    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18351
    nop

    .line 18353
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    .line 18351
    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v12, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 18355
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 18357
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v2, v11, v3}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v10

    .line 18360
    .local v10, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18361
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    const-class v7, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v29, v6

    check-cast v29, Lcom/android/server/DeviceIdleInternal;

    .line 18362
    .local v29, "idleController":Lcom/android/server/DeviceIdleInternal;
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v30

    .line 18363
    .local v30, "idleDuration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v32

    .line 18364
    .local v32, "options":Landroid/app/BroadcastOptions;
    const/16 v24, 0x131

    const-string v25, ""

    move-object/from16 v20, v32

    move-wide/from16 v21, v30

    invoke-virtual/range {v20 .. v25}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 18372
    if-eqz v10, :cond_9

    .line 18373
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 18374
    .local v6, "n":I
    if-nez v6, :cond_7

    .line 18375
    const-string v7, "PackageManager"

    const-string v8, "Additional verifiers required, but none installed."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18376
    const/16 v4, -0x16

    goto :goto_6

    .line 18378
    :cond_7
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v6, :cond_8

    .line 18379
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 18380
    .local v8, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 18381
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 18382
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x131

    .line 18380
    const-string v28, "package verifier"

    move-object/from16 v20, v29

    move-wide/from16 v23, v30

    invoke-interface/range {v20 .. v28}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 18385
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 18386
    .local v9, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18387
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 18389
    move/from16 v20, v4

    .end local v4    # "ret":I
    .local v20, "ret":I
    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 18387
    invoke-virtual {v13, v9, v5, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18378
    .end local v8    # "verifierComponent":Landroid/content/ComponentName;
    .end local v9    # "sufficientIntent":Landroid/content/Intent;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v20

    const/4 v13, 0x1

    goto :goto_4

    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :cond_8
    move/from16 v20, v4

    .end local v4    # "ret":I
    .restart local v20    # "ret":I
    goto :goto_5

    .line 18372
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :cond_9
    move/from16 v20, v4

    .line 18394
    .end local v4    # "ret":I
    .restart local v20    # "ret":I
    :goto_5
    move/from16 v4, v20

    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :goto_6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 18395
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v6, v11}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 18402
    .local v2, "requiredVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18403
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 18405
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x131

    .line 18403
    const-string v28, "package verifier"

    move-object/from16 v20, v29

    move-object/from16 v22, v6

    move-wide/from16 v23, v30

    invoke-interface/range {v20 .. v28}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 18407
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v13, -0x1

    .line 18410
    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v20

    new-instance v9, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;

    invoke-direct {v9, v0, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 18407
    const-string v25, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v7, v12

    move-object v8, v5

    move-object/from16 v26, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v10

    .end local v10    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v25, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move v10, v13

    move-object/from16 v27, v11

    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v27, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "verification":Landroid/content/Intent;
    .local v20, "verification":Landroid/content/Intent;
    move-object/from16 v12, v26

    move-object/from16 v13, v21

    move/from16 v21, v14

    .end local v14    # "installerUid":I
    .local v21, "installerUid":I
    move/from16 v14, v22

    move/from16 v33, v15

    .end local v15    # "requiredUid":I
    .local v33, "requiredUid":I
    move-object/from16 v15, v23

    move-object/from16 v16, v24

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 18421
    const-wide/32 v6, 0x40000

    const-string v8, "verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18428
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    goto :goto_7

    .line 18394
    .end local v2    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v20    # "verification":Landroid/content/Intent;
    .end local v21    # "installerUid":I
    .end local v25    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v27    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v33    # "requiredUid":I
    .restart local v10    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "verification":Landroid/content/Intent;
    .restart local v14    # "installerUid":I
    .restart local v15    # "requiredUid":I
    :cond_a
    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v20, v12

    move/from16 v21, v14

    move/from16 v33, v15

    .line 18430
    .end local v10    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "verification":Landroid/content/Intent;
    .end local v14    # "installerUid":I
    .end local v15    # "requiredUid":I
    .end local v29    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v30    # "idleDuration":J
    .end local v32    # "options":Landroid/app/BroadcastOptions;
    .restart local v21    # "installerUid":I
    .restart local v33    # "requiredUid":I
    :goto_7
    move/from16 v2, v33

    goto :goto_9

    .line 18319
    .end local v21    # "installerUid":I
    .end local v33    # "requiredUid":I
    .restart local v14    # "installerUid":I
    .restart local v15    # "requiredUid":I
    :cond_b
    move/from16 v20, v4

    move v6, v13

    move/from16 v21, v14

    move/from16 v33, v15

    .line 18431
    .end local v4    # "ret":I
    .end local v14    # "installerUid":I
    .end local v15    # "requiredUid":I
    .local v20, "ret":I
    .restart local v21    # "installerUid":I
    .restart local v33    # "requiredUid":I
    :goto_8
    move/from16 v2, v33

    .end local v33    # "requiredUid":I
    .local v2, "requiredUid":I
    invoke-virtual {v3, v2, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move/from16 v4, v20

    .line 18434
    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :goto_9
    return v4
.end method

.method setReturnCode(I)V
    .locals 2
    .param p1, "ret"    # I

    .line 18462
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18465
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    .line 18467
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
