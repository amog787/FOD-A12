.class Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CacheOomRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastActivityTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CacheOomRanker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CacheOomRanker$1;

    .line 293
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;
    .param p2, "o2"    # Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 296
    iget-object v0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v0

    iget-object v2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 293
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;->compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I

    move-result p1

    return p1
.end method
