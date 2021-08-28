.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;ILcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/pm/PackageSetting;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$getGrantedPermissionsInternal$7$PermissionManagerService(ILcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
