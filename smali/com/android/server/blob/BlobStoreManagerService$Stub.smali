.class Lcom/android/server/blob/BlobStoreManagerService$Stub;
.super Landroid/app/blob/IBlobStoreManager$Stub;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/app/blob/IBlobStoreManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public abandonSession(JLjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1470
    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 1472
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1475
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1500(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V

    .line 1478
    return-void
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    .locals 9
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "leaseExpiryTimeMillis"    # J
    .param p6, "packageName"    # Ljava/lang/String;

    .line 1507
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1508
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1509
    nop

    .line 1510
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description must be valid; descriptionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1513
    const-string/jumbo v0, "leaseExpiryTimeMillis must not be negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 1515
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1517
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreConfig;->getTruncatedLeaseDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1520
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p6}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1522
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1523
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1522
    invoke-virtual {v1, p6, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, v0

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/blob/BlobStoreManagerService;->access$1700(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    nop

    .line 1536
    return-void

    .line 1533
    :catch_0
    move-exception v1

    .line 1534
    .local v1, "e":Landroid/os/LimitExceededException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1531
    .end local v1    # "e":Landroid/os/LimitExceededException;
    :catch_1
    move-exception v1

    .line 1532
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1524
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1433
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1434
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1435
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1438
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1440
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1441
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1440
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1300(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1448
    :catch_0
    move-exception v1

    .line 1449
    .local v1, "e":Landroid/os/LimitExceededException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1442
    .end local v1    # "e":Landroid/os/LimitExceededException;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to create session; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteBlob(J)V
    .locals 3
    .param p1, "blobId"    # J

    .line 1601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1602
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1607
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2200(Lcom/android/server/blob/BlobStoreManagerService;JI)V

    .line 1608
    return-void

    .line 1603
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system uid is allowed to call deleteBlob()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1644
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "BlobStore"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1646
    :cond_0
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    move-result-object v0

    .line 1648
    .local v0, "dumpArgs":Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1649
    .local v1, "fout":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpHelp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1650
    const-string v2, "dumpsys blob_store [options]:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1652
    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->access$2500(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Landroid/util/IndentingPrintWriter;)V

    .line 1653
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1654
    return-void

    .line 1657
    :cond_1
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2600(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1658
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentMaxSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v4}, Lcom/android/server/blob/BlobStoreManagerService;->access$2700(Lcom/android/server/blob/BlobStoreManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1663
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSessions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1664
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2800(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1665
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1667
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlobs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1668
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2900(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1669
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1671
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpConfig()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1674
    const-string v2, "BlobStore config:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1676
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/blob/BlobStoreConfig;->dump(Landroid/util/IndentingPrintWriter;Landroid/content/Context;)V

    .line 1677
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1678
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1680
    :cond_5
    return-void

    .line 1671
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1624
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1625
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1626
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1629
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1631
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1632
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1631
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2400(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v1

    return-object v1

    .line 1633
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .line 1613
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1616
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1618
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$2300(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRemainingLeaseQuotaBytes(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1559
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1561
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1900(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1686
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 1687
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1686
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$waitForIdle$0$BlobStoreManagerService$Stub(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1575
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$600(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1576
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1575
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    return-void
.end method

.method public synthetic lambda$waitForIdle$1$BlobStoreManagerService$Stub(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1574
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$3000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1578
    return-void
.end method

.method public openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1483
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1484
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1485
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1488
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1490
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1491
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1490
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1497
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1600(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1498
    :catch_0
    move-exception v1

    .line 1499
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1492
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1457
    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 1459
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1462
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1464
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1400(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v1

    return-object v1
.end method

.method public queryBlobsForUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 1584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 1589
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1590
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1592
    .local v0, "resolvedUserId":I
    :goto_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1594
    .local v1, "amInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 1596
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2100(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1585
    .end local v0    # "resolvedUserId":I
    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system uid is allowed to call queryBlobsForUser()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1540
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1541
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1542
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1545
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1547
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1548
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1547
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1800(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    .line 1554
    return-void

    .line 1549
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public waitForIdle(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1566
    const-string/jumbo v0, "remoteCallback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1568
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not allowed to call this; caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1568
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$600(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    return-void
.end method
