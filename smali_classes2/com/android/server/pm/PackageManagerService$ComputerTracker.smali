.class Lcom/android/server/pm/PackageManagerService$ComputerTracker;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Computer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputerTracker"
.end annotation


# instance fields
.field private final mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/PackageManagerService;

    .line 5024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5017
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5021
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5025
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 5026
    return-void
.end method

.method private live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    .locals 2

    .line 5029
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    .line 5030
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-lez v1, :cond_0

    .line 5031
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire()V

    .line 5032
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 5034
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Computer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V

    .line 5036
    :goto_0
    return-object v0
.end method

.method private snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    .locals 2

    .line 5040
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    .line 5041
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-lez v1, :cond_0

    .line 5042
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire()V

    .line 5043
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 5045
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Computer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V

    .line 5047
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .locals 10
    .param p2, "ephemeralPkgName"    # Ljava/lang/String;
    .param p3, "allowDynamicSplits"    # Z
    .param p4, "filterCallingUid"    # I
    .param p5, "resolveForStart"    # Z
    .param p6, "userId"    # I
    .param p7, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 5209
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    .line 5211
    .local v1, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/PackageManagerService$Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5214
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5211
    return-object v0

    .line 5214
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5215
    throw v0
.end method

.method public final canViewInstantApps(II)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 5350
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5352
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->canViewInstantApps(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5354
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5352
    return v1

    .line 5354
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5355
    throw v1
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 5473
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5475
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5477
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5475
    return v1

    .line 5477
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5478
    throw v1
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I

    .line 5269
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5271
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5274
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5271
    return-object v1

    .line 5274
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5275
    throw v1
.end method

.method public final dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5537
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5539
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5541
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5542
    nop

    .line 5543
    return-void

    .line 5541
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5542
    throw v1
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 5546
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5548
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5551
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5552
    nop

    .line 5553
    return-void

    .line 5551
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5552
    throw v1
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 5556
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5558
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5561
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5562
    nop

    .line 5563
    return-void

    .line 5561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5562
    throw v1
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 5567
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5569
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5572
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5573
    nop

    .line 5574
    return-void

    .line 5572
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5573
    throw v1
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5358
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5360
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5362
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5360
    return v1

    .line 5362
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5363
    throw v1
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5366
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5368
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5370
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5368
    return v1

    .line 5370
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5371
    throw v1
.end method

.method public final filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z
    .locals 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 5375
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5377
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5379
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5377
    return v1

    .line 5379
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5380
    throw v1
.end method

.method public final generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 5134
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5136
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5139
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5136
    return-object v1

    .line 5139
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5140
    throw v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5218
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5220
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5222
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5220
    return-object v1

    .line 5222
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5223
    throw v1
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5099
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5101
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5103
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5101
    return-object v1

    .line 5103
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5104
    throw v1
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 5108
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5110
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5113
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5110
    return-object v1

    .line 5113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5114
    throw v1
.end method

.method public final getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5143
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5145
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5147
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5145
    return-object v1

    .line 5147
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5148
    throw v1
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 5152
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5154
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5157
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5154
    return-object v1

    .line 5157
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5158
    throw v1
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "sourceUserId"    # I
    .param p5, "parentUserId"    # I

    .line 5179
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5181
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5184
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5181
    return-object v1

    .line 5184
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5185
    throw v1
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 5161
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5163
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5165
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5163
    return-object v1

    .line 5165
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5166
    throw v1
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 5170
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5172
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5174
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5172
    return-object v1

    .line 5174
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5175
    throw v1
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .locals 2

    .line 5188
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5190
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerService$Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5192
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5190
    return-object v1

    .line 5192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5193
    throw v1
.end method

.method public final getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 5260
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5262
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5264
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5262
    return-object v1

    .line 5264
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5265
    throw v1
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 5310
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5312
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5314
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5312
    return-object v1

    .line 5314
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5315
    throw v1
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 5197
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5199
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5202
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5199
    return-object v1

    .line 5202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5203
    throw v1
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2
    .param p1, "uid"    # I

    .line 5125
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5127
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5129
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5127
    return-object v1

    .line 5129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5130
    throw v1
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5117
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5119
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5121
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5119
    return-object v1

    .line 5121
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5122
    throw v1
.end method

.method public final getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5226
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5228
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5230
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5228
    return-object v1

    .line 5230
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5231
    throw v1
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I

    .line 5235
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5237
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5240
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5237
    return-object v1

    .line 5240
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5241
    throw v1
.end method

.method public final getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5244
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5246
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5248
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5246
    return-object v1

    .line 5248
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5249
    throw v1
.end method

.method public final getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 5252
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5254
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5256
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5254
    return-object v1

    .line 5256
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5257
    throw v1
.end method

.method public final getPackageUidInternal(Ljava/lang/String;III)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 5482
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5484
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageUidInternal(Ljava/lang/String;III)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5487
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5484
    return v1

    .line 5487
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5488
    throw v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .line 5334
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5336
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5338
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5336
    return-object v1

    .line 5338
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5339
    throw v1
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 5342
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5344
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5346
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5344
    return-object v1

    .line 5346
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5347
    throw v1
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5278
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5280
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5282
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5280
    return-object v1

    .line 5282
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5283
    throw v1
.end method

.method public final getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 5286
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5288
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5290
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5288
    return-object v1

    .line 5290
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5291
    throw v1
.end method

.method public final getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "uid"    # I

    .line 5302
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5304
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5306
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5304
    return-object v1

    .line 5306
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5307
    throw v1
.end method

.method public final getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5294
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5296
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5298
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5296
    return-object v1

    .line 5298
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5299
    throw v1
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 5383
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5385
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5387
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5385
    return v1

    .line 5387
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5388
    throw v1
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 5391
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5393
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5395
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5393
    return v1

    .line 5395
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5396
    throw v1
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 5400
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5402
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5404
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5402
    return v1

    .line 5404
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5405
    throw v1
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 5409
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5411
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5414
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5411
    return v1

    .line 5414
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5415
    throw v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5418
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5420
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5422
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5420
    return v1

    .line 5422
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5423
    throw v1
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 5427
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5429
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5431
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5429
    return v1

    .line 5431
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5432
    throw v1
.end method

.method public final isSameProfileGroup(II)Z
    .locals 2
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 5436
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5438
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5440
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5438
    return v1

    .line 5440
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5441
    throw v1
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 5065
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5067
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5070
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5067
    return-object v1

    .line 5070
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5071
    throw v1
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privateResolveFlags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "allowDynamicSplits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 5054
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    .line 5056
    .local v1, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5060
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5056
    return-object v0

    .line 5060
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5061
    throw v0
.end method

.method public final queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "allowDynamicSplits"    # Z
    .param p8, "pkgName"    # Ljava/lang/String;
    .param p9, "instantAppPkgName"    # Ljava/lang/String;

    .line 5089
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    .line 5091
    .local v1, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5095
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5091
    return-object v0

    .line 5095
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5096
    throw v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .param p6, "includeInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 5076
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5078
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5081
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5078
    return-object v1

    .line 5081
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5082
    throw v1
.end method

.method public final resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5318
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5320
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5322
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5320
    return-object v1

    .line 5322
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5323
    throw v1
.end method

.method public final resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 5326
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5328
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5330
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5328
    return-object v1

    .line 5330
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5331
    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    .locals 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5465
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5467
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5469
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5467
    return v1

    .line 5469
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5470
    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z
    .locals 7
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I

    .line 5455
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5457
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5460
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5457
    return v1

    .line 5460
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5461
    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z
    .locals 2
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5445
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5447
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5449
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5447
    return v1

    .line 5449
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5450
    throw v1
.end method

.method public final updateFlagsForApplication(II)I
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 5491
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5493
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForApplication(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5495
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5493
    return v1

    .line 5495
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5496
    throw v1
.end method

.method public final updateFlagsForComponent(II)I
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 5499
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5501
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForComponent(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5503
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5501
    return v1

    .line 5503
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5504
    throw v1
.end method

.method public final updateFlagsForPackage(II)I
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 5507
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5509
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForPackage(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5511
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5509
    return v1

    .line 5511
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5512
    throw v1
.end method

.method public final updateFlagsForResolve(IIIZZ)I
    .locals 7
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "wantInstantApps"    # Z
    .param p5, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 5516
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5518
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForResolve(IIIZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5521
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5518
    return v1

    .line 5521
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5522
    throw v1
.end method

.method public final updateFlagsForResolve(IIIZZZ)I
    .locals 8
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "wantInstantApps"    # Z
    .param p5, "onlyExposedExplicitly"    # Z
    .param p6, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 5527
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    .line 5529
    .local v0, "current":Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForResolve(IIIZZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5533
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5529
    return v1

    .line 5533
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    .line 5534
    throw v1
.end method
