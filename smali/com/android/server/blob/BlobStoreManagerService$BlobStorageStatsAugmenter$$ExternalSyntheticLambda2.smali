.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$0:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$0:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUser$5(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method
