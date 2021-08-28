.class Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;
.super Ljava/lang/Object;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockSafeConnection"
.end annotation


# instance fields
.field private final mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field final synthetic this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .locals 0
    .param p2, "connection"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 2039
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 2041
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;Lcom/android/server/pm/verify/domain/DomainVerificationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p2, "x1"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
    .param p3, "x2"    # Lcom/android/server/pm/verify/domain/DomainVerificationService$1;

    .line 2034
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    return-void
.end method

.method private enforceLocking()V
    .locals 2

    .line 2044
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->access$100(Lcom/android/server/pm/verify/domain/DomainVerificationService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    const-string v0, "DomainVerificationService"

    const-string v1, "Method should not hold DVS lock when accessing package data"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    return-void
.end method


# virtual methods
.method public doesUserExist(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2126
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->doesUserExist(I)Z

    move-result v0

    return v0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2121
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public getAllUserIds()[I
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCallingUserId()I
    .locals 1

    .line 2105
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public schedule(ILjava/lang/Object;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 2110
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->schedule(ILjava/lang/Object;)V

    .line 2111
    return-void
.end method

.method public scheduleWriteSettings()V
    .locals 1

    .line 2094
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 2095
    return-void
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

    .line 2052
    .local p1, "block":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    .line 2053
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    .line 2054
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

    .line 2060
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TOutput;>;"
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    .line 2061
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;

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

    .line 2088
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TOutput;TExceptionType;>;"
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    .line 2089
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

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

    .line 2068
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TExceptionType;>;"
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    .line 2069
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 2070
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

    .line 2078
    .local p1, "block":Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer<Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;TExceptionOne;TExceptionTwo;>;"
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    .line 2079
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    .line 2080
    return-void
.end method
