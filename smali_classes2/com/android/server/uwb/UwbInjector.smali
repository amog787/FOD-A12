.class public Lcom/android/server/uwb/UwbInjector;
.super Ljava/lang/Object;
.source "UwbInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbInjector"

.field private static final VENDOR_SERVICE_NAME:Ljava/lang/String; = "uwb_vendor"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public checkUwbRangingPermissionForDataDelivery(Landroid/content/AttributionSource;Ljava/lang/String;)Z
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "message"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UWB_RANGING"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "permissionCheckResult":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public enforceUwbRangingPermissionForPreflight(Landroid/content/AttributionSource;)V
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 61
    invoke-virtual {p1}, Landroid/content/AttributionSource;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UWB_RANGING"

    invoke-static {v0, v1, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    .line 66
    .local v0, "permissionCheckResult":I
    if-nez v0, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller does not hold UWB_RANGING permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "permissionCheckResult":I
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribution source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVendorService()Landroid/uwb/IUwbAdapter;
    .locals 2

    .line 49
    const-string v0, "uwb_vendor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 51
    :cond_0
    invoke-static {v0}, Landroid/uwb/IUwbAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapter;

    move-result-object v1

    return-object v1
.end method
