.class Lcom/android/server/utils/SnapshotCache$Statistics;
.super Ljava/lang/Object;
.source "SnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Statistics"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field private final mRebuilt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReused:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mReused:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mRebuilt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 45
    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mRebuilt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 45
    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mReused:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
