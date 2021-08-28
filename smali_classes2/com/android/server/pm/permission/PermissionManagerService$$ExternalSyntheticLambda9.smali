.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;I[ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$2:[Z

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$3:I

    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$2:[Z

    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$3:I

    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$updatePermissionFlagsForAllApps$2$PermissionManagerService(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
