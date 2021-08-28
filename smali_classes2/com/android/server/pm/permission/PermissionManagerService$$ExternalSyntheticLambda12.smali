.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/permission/Permission;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/pm/permission/Permission;

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/pm/permission/Permission;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$updatePermissionSourcePackage$10$PermissionManagerService(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
