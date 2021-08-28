.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-boolean p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$4:Z

    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-boolean v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$4:Z

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$onPackageAddedInternal$15$PermissionManagerService(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    return-void
.end method
