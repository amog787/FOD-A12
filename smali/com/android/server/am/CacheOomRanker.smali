.class public Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;,
        Lcom/android/server/am/CacheOomRanker$LastRssComparator;,
        Lcom/android/server/am/CacheOomRanker$CacheUseComparator;,
        Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;,
        Lcom/android/server/am/CacheOomRanker$ScoreComparator;
    }
.end annotation


# static fields
.field private static final CACHE_USE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f

.field static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8

.field static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f

.field static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f

.field private static final DEFAULT_USE_OOM_RE_RANKING:Z = false

.field static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"

.field static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"

.field static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"

.field static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"

.field static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"

.field private static final LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_RSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLruPositions:[I

.field mLruWeight:F

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProfilerLock:Ljava/lang/Object;

.field mRssWeight:F

.field private mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mUseOomReRanking:Z

.field mUsesWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/am/CacheOomRanker$ScoreComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ScoreComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    .line 56
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastRssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastRssComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 70
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 76
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 86
    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 109
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 110
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 111
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CacheOomRanker;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    return-void
.end method

.method private static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .locals 4
    .param p0, "scores"    # [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;
    .param p1, "weight"    # F

    .line 270
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 271
    aget-object v1, p0, v0

    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    int-to-float v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateLruWeight()V
    .locals 3

    .line 164
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_lru_weight"

    const v2, 0x3eb33333    # 0.35f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 166
    return-void
.end method

.method private updateNumberToReRank()V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v0

    .line 145
    .local v0, "previousNumberToReRank":I
    const-string v1, "activity_manager"

    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "numberToReRank":I
    if-eq v0, v1, :cond_1

    .line 148
    new-array v2, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iput-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 150
    new-instance v4, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    aput-object v4, v3, v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 154
    :cond_1
    return-void
.end method

.method private updateRssWeight()V
    .locals 3

    .line 176
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_weight"

    const v2, 0x3e19999a    # 0.15f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 178
    return-void
.end method

.method private updateUseOomReranking()V
    .locals 3

    .line 138
    const-string v0, "activity_manager"

    const-string/jumbo v1, "use_oom_re_ranking"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 140
    return-void
.end method

.method private updateUsesWeight()V
    .locals 3

    .line 170
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_uses_weight"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 172
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 276
    const-string v0, "CacheOomRanker settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_oom_re_ranking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_number_to_re_rank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_lru_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_uses_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_rss_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNumberToReRank()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public init(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 116
    const-string v0, "activity_manager"

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    .line 120
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    .line 122
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "lruProcessServiceStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)V"
        }
    .end annotation

    .line 192
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget v1, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 194
    .local v1, "lruWeight":F
    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 195
    .local v2, "usesWeight":F
    iget v3, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 196
    .local v3, "rssWeight":F
    iget-object v4, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 197
    .local v4, "lruPositions":[I
    iget-object v5, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 198
    .local v5, "scoredProcessRecords":[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    if-eqz v4, :cond_8

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "cachedProcessPos":I
    const/4 v6, 0x0

    .line 209
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x0

    if-ge v6, p2, :cond_2

    array-length v8, v5

    if-ge v0, v8, :cond_2

    .line 210
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 212
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    const/16 v10, 0x3e9

    if-lt v9, v10, :cond_1

    .line 214
    aget-object v9, v5, v0

    iput-object v8, v9, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 215
    aget-object v9, v5, v0

    iput v7, v9, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 216
    aput v6, v4, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 209
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    .end local v6    # "i":I
    :cond_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 224
    return-void

    .line 228
    :cond_3
    cmpl-float v6, v1, v7

    if-lez v6, :cond_4

    .line 231
    sget-object v6, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 232
    invoke-static {v5, v1}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 234
    :cond_4
    cmpl-float v6, v3, v7

    if-lez v6, :cond_5

    .line 235
    iget-object v6, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v6, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 236
    :try_start_1
    sget-object v8, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 237
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-static {v5, v3}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_1

    .line 237
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 240
    :cond_5
    :goto_1
    cmpl-float v6, v2, v7

    if-lez v6, :cond_6

    .line 241
    sget-object v6, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 242
    invoke-static {v5, v2}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 246
    :cond_6
    sget-object v6, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 263
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 264
    aget v7, v4, v6

    aget-object v8, v5, v6

    iget-object v8, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    aget-object v7, v5, v6

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 267
    .end local v6    # "i":I
    :cond_7
    return-void

    .line 202
    .end local v0    # "cachedProcessPos":I
    :cond_8
    :goto_3
    return-void

    .line 198
    .end local v1    # "lruWeight":F
    .end local v2    # "usesWeight":F
    .end local v3    # "rssWeight":F
    .end local v4    # "lruPositions":[I
    .end local v5    # "scoredProcessRecords":[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public useOomReranking()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    monitor-exit v0

    return v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
