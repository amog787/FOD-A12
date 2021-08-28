.class public final Lcom/android/server/location/LocationPermissions;
.super Ljava/lang/Object;
.source "LocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationPermissions$PermissionLevel;
    }
.end annotation


# static fields
.field public static final PERMISSION_COARSE:I = 0x1

.field public static final PERMISSION_FINE:I = 0x2

.field public static final PERMISSION_NONE:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAppOp(I)I
    .locals 1
    .param p0, "permissionLevel"    # I

    .line 73
    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 75
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static asPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "permissionLevel"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :pswitch_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 61
    :pswitch_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requiredPermissionLevel"    # I

    .line 128
    nop

    .line 129
    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->getCallingOrSelfPermissionLevel(Landroid/content/Context;)I

    move-result v0

    .line 128
    invoke-static {v0, p1}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    return v0
.end method

.method public static checkLocationPermission(II)Z
    .locals 1
    .param p0, "permissionLevel"    # I
    .param p1, "requiredPermissionLevel"    # I

    .line 149
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkLocationPermission(Landroid/content/Context;III)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "requiredPermissionLevel"    # I

    .line 138
    nop

    .line 139
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 138
    invoke-static {v0, p3}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    return v0
.end method

.method public static enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requiredPermissionLevel"    # I

    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v1

    .line 88
    invoke-static {v0, v1, p1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 91
    return-void
.end method

.method public static enforceLocationPermission(III)V
    .locals 6
    .param p0, "uid"    # I
    .param p1, "permissionLevel"    # I
    .param p2, "requiredPermissionLevel"    # I

    .line 110
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    const-string v1, "."

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, " does not have "

    const-string/jumbo v4, "uid "

    if-eq p2, v0, :cond_2

    .line 117
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 121
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceLocationPermission(Landroid/content/Context;III)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "requiredPermissionLevel"    # I

    .line 99
    nop

    .line 100
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 99
    invoke-static {p1, v0, p3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 102
    return-void
.end method

.method public static getCallingOrSelfPermissionLevel(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getPermissionLevel(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 165
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x2

    return v0

    .line 168
    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
