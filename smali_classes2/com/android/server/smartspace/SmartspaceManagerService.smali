.class public Lcom/android/server/smartspace/SmartspaceManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "SmartspaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/smartspace/SmartspaceManagerService;",
        "Lcom/android/server/smartspace/SmartspacePerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartspace/SmartspaceManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040225

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 65
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 51
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 51
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/smartspace/SmartspaceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartspace/SmartspaceManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 51
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/smartspace/SmartspaceManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartspace/SmartspaceManagerService;
    .param p1, "x1"    # I

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspaceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/smartspace/SmartspaceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_SMARTSPACE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 1

    .line 101
    const v0, 0x1d4c0

    return v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService;->newServiceLocked(IZ)Lcom/android/server/smartspace/SmartspacePerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/smartspace/SmartspacePerUserService;
    .locals 2
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 70
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected onServicePackageRestartedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 94
    .local v0, "service":Lcom/android/server/smartspace/SmartspacePerUserService;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onPackageRestartedLocked()V

    .line 97
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 86
    .local v0, "service":Lcom/android/server/smartspace/SmartspacePerUserService;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onPackageUpdatedLocked()V

    .line 89
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 75
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;Lcom/android/server/smartspace/SmartspaceManagerService$1;)V

    const-string v1, "smartspace"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 76
    return-void
.end method
