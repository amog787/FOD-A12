.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/UserInfo;

.field public final synthetic f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$2:Landroid/os/storage/StorageManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$0:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$2:Landroid/os/storage/StorageManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$0:Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$2:Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$prepareAppDataAfterInstallLIF$65(Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V

    return-void
.end method
