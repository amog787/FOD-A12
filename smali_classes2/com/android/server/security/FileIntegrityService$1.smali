.class Lcom/android/server/security/FileIntegrityService$1;
.super Landroid/security/IFileIntegrityService$Stub;
.source "FileIntegrityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/FileIntegrityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/security/FileIntegrityService;

    .line 59
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-direct {p0}, Landroid/security/IFileIntegrityService$Stub;-><init>()V

    return-void
.end method

.method private checkCallerPermission(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 87
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 88
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 89
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 90
    .local v2, "packageManager":Landroid/content/pm/PackageManagerInternal;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 92
    .local v3, "packageUid":I
    if-ne v0, v3, :cond_2

    .line 97
    iget-object v4, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4}, Lcom/android/server/security/FileIntegrityService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4}, Lcom/android/server/security/FileIntegrityService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 103
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v5, 0x42

    invoke-virtual {v4, v5, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 105
    .local v5, "mode":I
    if-nez v5, :cond_1

    .line 109
    return-void

    .line 106
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller should have INSTALL_PACKAGES or REQUEST_INSTALL_PACKAGES"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    .end local v4    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v5    # "mode":I
    :cond_2
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not own package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public isApkVeritySupported()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    return v0
.end method

.method public isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .locals 5
    .param p1, "certificateBytes"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 68
    const-string v0, "FileIntegrityService"

    invoke-direct {p0, p2}, Lcom/android/server/security/FileIntegrityService$1;->checkCallerPermission(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    if-nez p1, :cond_1

    .line 75
    const-string v2, "Received a null certificate"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {v2}, Lcom/android/server/security/FileIntegrityService;->access$100(Lcom/android/server/security/FileIntegrityService;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->access$000([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert the certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v1
.end method
