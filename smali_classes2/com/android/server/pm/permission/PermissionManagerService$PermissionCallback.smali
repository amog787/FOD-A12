.class Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService$1;

    .line 5254
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 5255
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    .line 5258
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    .line 5260
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    .line 5267
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 5269
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionUpdated()V

    .line 5270
    return-void
.end method

.method public onPermissionChanged()V
    .locals 0

    .line 5256
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 5257
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 0

    .line 5266
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 5259
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 0
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 5261
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 0
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 5264
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 5265
    return-void
.end method
