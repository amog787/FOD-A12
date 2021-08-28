.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 108
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 110
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    nop

    .line 111
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 113
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 115
    .local v2, "token":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v5, :cond_0

    move v6, v5

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw v4

    .line 116
    :cond_0
    move v6, v4

    .line 119
    .local v6, "hasCarrierPrivileges":Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    nop

    .line 122
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    .line 123
    .local v7, "isDeviceOwner":Z
    :goto_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 124
    .local v8, "appId":I
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_8

    const/16 v9, 0x431

    if-ne v8, v9, :cond_2

    goto :goto_4

    .line 131
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    .line 132
    .local v9, "hasAppOpsPermission":Z
    if-nez v9, :cond_7

    const-string v10, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    .line 138
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 139
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    move v10, v5

    goto :goto_2

    :cond_5
    move v10, v4

    .line 140
    .local v10, "isProfileOwner":Z
    :goto_2
    if-eqz v10, :cond_6

    .line 143
    return v5

    .line 147
    :cond_6
    return v4

    .line 134
    .end local v10    # "isProfileOwner":Z
    :cond_7
    :goto_3
    const/4 v4, 0x2

    return v4

    .line 128
    .end local v9    # "hasAppOpsPermission":Z
    :cond_8
    :goto_4
    const/4 v4, 0x3

    return v4
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 183
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 186
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 191
    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "permissionCheck":I
    if-nez v3, :cond_0

    move v0, v4

    :cond_0
    return v0

    .line 195
    .end local v3    # "permissionCheck":I
    :cond_1
    if-nez v2, :cond_2

    move v0, v4

    :cond_2
    return v0

    .line 197
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "mode":I
    :cond_3
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .locals 5
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I
    .param p2, "accessLevel"    # I

    .line 156
    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    .line 176
    if-ne p0, p1, :cond_4

    move v3, v4

    goto :goto_0

    .line 159
    :pswitch_0
    return v4

    .line 164
    :pswitch_1
    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 166
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    move v3, v4

    .line 164
    :cond_1
    return v3

    .line 170
    :pswitch_2
    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    .line 172
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_2
    move v3, v4

    .line 170
    :cond_3
    return v3

    .line 176
    :cond_4
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
