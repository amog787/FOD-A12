.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIILandroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$2:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$5:Landroid/content/pm/IPackageDataObserver;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$2:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$5:Landroid/content/pm/IPackageDataObserver;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$6:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->lambda$deleteApplicationCacheFilesAsUser$55$PackageManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIILandroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V

    return-void
.end method
