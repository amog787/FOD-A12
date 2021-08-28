.class Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPackageUsers"
.end annotation


# instance fields
.field private final mInstalledUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mInstalledUsers:Ljava/util/Set;

    .line 1099
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1100
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1095
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mInstalledUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1095
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1095
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p1
.end method
