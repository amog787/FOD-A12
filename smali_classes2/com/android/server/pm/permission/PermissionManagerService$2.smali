.class Lcom/android/server/pm/permission/PermissionManagerService$2;
.super Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field final synthetic val$asyncUpdatedUsers:Landroid/util/IntArray;

.field final synthetic val$permissionRemoved:[Z

.field final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field final synthetic val$syncUpdatedUsers:Landroid/util/IntArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 1755
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$permissionRemoved:[Z

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 1
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 1757
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onGidsChanged(II)V

    .line 1758
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionGranted()V

    .line 1770
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1780
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionUpdated()V

    .line 1802
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 1811
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 1812
    return-void
.end method

.method public onPermissionChanged()V
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionChanged()V

    .line 1762
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 1765
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionGranted(II)V

    .line 1766
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 3

    .line 1797
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$permissionRemoved:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1798
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1773
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1775
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 1776
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 5
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 1783
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 1784
    .local v2, "userId":I
    if-eqz p2, :cond_0

    .line 1785
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1786
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    goto :goto_1

    .line 1789
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1790
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1783
    .end local v2    # "userId":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1794
    :cond_2
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 1
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 1806
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$2;->onPermissionUpdated([IZ)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1808
    return-void
.end method
