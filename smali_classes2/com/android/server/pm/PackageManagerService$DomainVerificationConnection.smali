.class Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainVerificationConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1723
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 1723
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public doesUserExist(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1786
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1776
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public getAllUserIds()[I
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    .line 1735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCallingUserId()I
    .locals 1

    .line 1741
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v0

    const-class v1, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1771
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveTempWhitelistAppDuration()J
    .locals 2

    .line 1754
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCallerPackage(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1764
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1765
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public schedule(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 1746
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1747
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1748
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1749
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1750
    return-void
.end method

.method public scheduleWriteSettings()V
    .locals 2

    .line 1728
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1729
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1730
    monitor-exit v0

    .line 1731
    return-void

    .line 1730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;)V"
        }
    .end annotation

    .line 1792
    .local p1, "block":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    .line 1793
    return-void
.end method

.method public withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;>;)TOutput;"
        }
    .end annotation

    .line 1799
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TOutput;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            "ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;TExceptionType;>;)TOutput;^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1824
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TOutput;TExceptionType;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionType;>;)V^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1806
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TExceptionType;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 1807
    return-void
.end method

.method public withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionOne:",
            "Ljava/lang/Exception;",
            "ExceptionTwo:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionOne;TExceptionTwo;>;)V^TExceptionOne;^TExceptionTwo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1815
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TExceptionOne;TExceptionTwo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    .line 1816
    return-void
.end method
