.class Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobStorageStatsAugmenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method

.method static synthetic lambda$augmentStatsForPackageForUser$0(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1292
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1295
    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForPackageForUser$1(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "callerHasStatsPermission"    # Z
    .param p3, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p4, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1298
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p4, p0, v0, p2}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1302
    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForUid$2(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1313
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1314
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1316
    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForUid$3(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "callerHasStatsPermission"    # Z
    .param p2, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1319
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1323
    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForUser$4(Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2
    .param p0, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1333
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1334
    return-void
.end method

.method static synthetic lambda$augmentStatsForUser$5(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2
    .param p0, "userHandle"    # Landroid/os/UserHandle;
    .param p1, "blobsDataSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1337
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 1340
    :cond_0
    return-void
.end method


# virtual methods
.method public augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "callerHasStatsPermission"    # Z

    .line 1290
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1291
    .local v0, "blobsDataSize":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1291
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1297
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p3, p4, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1304
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1305
    return-void
.end method

.method public augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .locals 6
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "uid"    # I
    .param p3, "callerHasStatsPermission"    # Z

    .line 1310
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1311
    .local v0, "userId":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1312
    .local v1, "blobsDataSize":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1318
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, p3, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1325
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1326
    return-void
.end method

.method public augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1331
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1332
    .local v0, "blobsDataSize":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1334
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1332
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1336
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1342
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1343
    return-void
.end method
