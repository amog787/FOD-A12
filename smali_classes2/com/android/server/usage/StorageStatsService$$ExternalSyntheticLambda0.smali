.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    iput p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    iget v1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/usage/StorageStatsService;->lambda$queryStatsForUid$1(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V

    return-void
.end method
