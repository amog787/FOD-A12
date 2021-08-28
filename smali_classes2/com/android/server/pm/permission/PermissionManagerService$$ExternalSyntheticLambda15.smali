.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;->f$3:I

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$6$PermissionManagerService([ILjava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
