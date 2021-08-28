.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$6:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$6:I

    move-object v7, p1

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$revokeRuntimePermissionsIfGroupChangedInternal$5$PermissionManagerService([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
