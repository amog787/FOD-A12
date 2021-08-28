.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    return-void
.end method


# virtual methods
.method public final onInitialized(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$systemReady$12$PermissionManagerService(I)V

    return-void
.end method
