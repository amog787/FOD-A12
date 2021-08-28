.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;,
        Lcom/android/server/am/AppExitInfoTracker$KillHandler;,
        Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;,
        Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    }
.end annotation


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field private static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field private static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field private static final APP_EXIT_RAW_INFO_POOL_SIZE:I = 0x8

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field private static final APP_TRACE_FILE_SUFFIX:Ljava/lang/String; = ".gz"

.field private static final FOREACH_ACTION_NONE:I = 0x0

.field private static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field private static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mActiveAppStateSummary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[B>;>;"
        }
    .end annotation
.end field

.field final mActiveAppTraces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppExitInfoPersistTask:Ljava/lang/Runnable;

.field final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field private final mData:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field private mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field private mLastAppExitInfoPersistTimestamp:J

.field private final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field private final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInfoList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 149
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 205
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 211
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 217
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 218
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 247
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 250
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 251
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 252
    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 98
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 98
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 98
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # Landroid/app/ApplicationExitInfo;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Integer;
    .param p4, "x4"    # Ljava/lang/Integer;

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    return-object v0
.end method

.method private addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "info"    # Landroid/app/ApplicationExitInfo;

    .line 843
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 844
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-nez v0, :cond_2

    .line 845
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    move-object v0, v1

    .line 846
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 848
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 851
    .end local v1    # "k":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 854
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    .line 857
    return-void
.end method

.method private addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .locals 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 426
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string v0, "ActivityManager"

    const-string v1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 432
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "packages":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    .line 434
    .local v2, "uid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 435
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 440
    return-object v0
.end method

.method private static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .locals 10
    .param p0, "inFile"    # Ljava/io/File;
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .line 1115
    move-wide v0, p4

    .line 1117
    .local v0, "remaining":J
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1120
    .local v4, "out":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x2000

    :try_start_2
    new-array v5, v5, [B

    .line 1121
    .local v5, "buffer":[B
    invoke-virtual {v3, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1122
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 1123
    array-length v8, v5

    int-to-long v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v5, v2, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 1124
    .local v8, "t":I
    if-gez v8, :cond_0

    .line 1125
    goto :goto_1

    .line 1127
    :cond_0
    invoke-virtual {v4, v5, v2, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1128
    int-to-long v6, v8

    sub-long/2addr v0, v6

    .line 1129
    .end local v8    # "t":I
    goto :goto_0

    .line 1130
    .end local v5    # "buffer":[B
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1135
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    nop

    .line 1136
    cmp-long v3, v0, v6

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 1116
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_2
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "remaining":J
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_3
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1130
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "remaining":J
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catch_0
    move-exception v3

    .line 1134
    .local v3, "e":Ljava/io/IOException;
    return v2
.end method

.method private dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 833
    .local p4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 835
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Historical Process Exit for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 839
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .locals 5
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;II)TU;"
        }
    .end annotation

    .line 1255
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1256
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1257
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1258
    .local v2, "p":Landroid/util/SparseArray;, "TT;"
    if-nez v2, :cond_0

    .line 1259
    return-object v1

    .line 1261
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 1262
    .local v3, "innerIdx":I
    if-ltz v3, :cond_2

    .line 1263
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1264
    .local v1, "ret":Ljava/lang/Object;, "TU;"
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1265
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1266
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1268
    :cond_1
    return-object v1

    .line 1271
    .end local v1    # "ret":Ljava/lang/Object;, "TU;"
    .end local v2    # "p":Landroid/util/SparseArray;, "TT;"
    .end local v3    # "innerIdx":I
    :cond_2
    return-object v1
.end method

.method private forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 896
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 897
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 898
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 899
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 908
    :pswitch_0
    const/4 v1, 0x0

    .line 909
    goto :goto_2

    .line 901
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 902
    .local v2, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_0

    .line 903
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 902
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 905
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 906
    nop

    .line 898
    .end local v2    # "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 916
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    .end local v1    # "i":I
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1210
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    if-eqz p1, :cond_2

    .line 1211
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1212
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1213
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_0

    .line 1214
    goto :goto_2

    .line 1216
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1217
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1216
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1211
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1221
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I

    .line 570
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 571
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 572
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 574
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 575
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 576
    return-object v0
.end method

.method static synthetic lambda$getExitInfo$4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 547
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleLogAnrTrace$11(Ljava/io/File;)V
    .locals 0
    .param p0, "v"    # Ljava/io/File;

    .line 1098
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$persistProcessExitInfo$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 725
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 726
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 728
    .local v4, "uidArraySize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 729
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 728
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 731
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 732
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$12(Landroid/util/ArraySet;Ljava/io/File;)Z
    .locals 2
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "f"    # Ljava/io/File;

    .line 1146
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "name":Ljava/lang/String;
    const-string v1, "anr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1149
    .local v1, "trace":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1150
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_1
    return v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .locals 2
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1162
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 1163
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1166
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 3
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 1159
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1160
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1161
    .local v1, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/BiFunction;)V

    .line 1159
    .end local v1    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1169
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/io/File;)V
    .locals 1
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "v"    # Ljava/io/File;

    .line 1172
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$removeByUserIdLocked$10(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 969
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 970
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 971
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 972
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 973
    goto :goto_1

    .line 969
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 976
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeByUserIdLocked$7(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 965
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 967
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$9(Ljava/io/File;)V
    .locals 0
    .param p0, "v"    # Ljava/io/File;

    .line 967
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;->onLmkdKillOccurred(II)V

    return-void
.end method

.method private loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 689
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 690
    .local v0, "token":J
    const-string v2, ""

    .line 691
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    .line 692
    .local v3, "next":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 694
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 699
    :pswitch_0
    new-instance v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 701
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v5

    .line 702
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 703
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v2, v5, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 704
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 696
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    .end local v5    # "uid":I
    :pswitch_1
    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 697
    nop

    .line 693
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto :goto_0

    .line 708
    .end local v3    # "next":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 709
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 11
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 875
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    .line 879
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    const/4 v1, 0x0

    goto :goto_0

    .line 884
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 888
    :cond_2
    :goto_0
    const/16 v2, 0x175

    .line 889
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v6

    .line 890
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v9

    long-to-int v9, v9

    .line 888
    move-object v4, v1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIII)V

    .line 891
    return-void
.end method

.method private pruneAnrTracesIfNecessaryLocked()V
    .locals 6

    .line 1144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1145
    .local v0, "allFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1154
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1155
    return-void

    .line 1158
    :cond_0
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1172
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1175
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1176
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1175
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1178
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;IITU;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1186
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TU;"
    .local p4, "newInstance":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p5, "actionToOldValue":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1187
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 1188
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-gez v0, :cond_0

    .line 1189
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1190
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1194
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1195
    if-ltz v0, :cond_2

    .line 1196
    if-eqz p5, :cond_1

    .line 1197
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1199
    :cond_1
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_1

    .line 1201
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1203
    :goto_1
    return-void
.end method

.method private registerForPackageRemoval()V
    .locals 5

    .line 622
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 623
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 639
    return-void
.end method

.method private registerForUserRemoval()V
    .locals 5

    .line 609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 619
    return-void
.end method

.method private removeByUserIdLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 957
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 959
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 960
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 961
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 962
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 966
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;-><init>(I)V

    sget-object v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 968
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 978
    return-void
.end method

.method private static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1229
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "outerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p2, "innerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 1230
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1231
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1232
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_1

    .line 1233
    goto :goto_2

    .line 1235
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1236
    if-eqz p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1237
    :cond_2
    if-eqz p3, :cond_3

    .line 1238
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1240
    :cond_3
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1235
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1243
    .end local v2    # "j":I
    :cond_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 1244
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1229
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1248
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private removePackageLocked(Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "removeUid"    # Z
    .param p4, "userId"    # I

    .line 920
    if-eqz p3, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 922
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 923
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 924
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 925
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 926
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 925
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 928
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 931
    .end local v0    # "idx":I
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 932
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 933
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-nez v1, :cond_2

    .line 934
    return-void

    .line 936
    :cond_2
    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    .line 937
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 938
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 937
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 940
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 942
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 943
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_5

    .line 944
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 945
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 946
    goto :goto_3

    .line 942
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 949
    .end local v2    # "i":I
    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 950
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :cond_7
    :goto_4
    return-void
.end method

.method private scheduleChildProcDied(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    return-void
.end method

.method private scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "immediate"    # Z

    .line 861
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    return-void

    .line 864
    :cond_0
    const/16 v0, 0x1009

    if-eqz p2, :cond_1

    .line 865
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->removeMessages(ILjava/lang/Object;)V

    .line 866
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 871
    :cond_2
    :goto_0
    return-void
.end method

.method private updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 449
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 454
    .local v0, "immediateLog":Z
    if-eqz p2, :cond_3

    .line 455
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 457
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 458
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    if-nez v1, :cond_2

    .line 461
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 462
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 464
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 465
    const/4 v0, 0x1

    .line 469
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 470
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 471
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 472
    const/4 v0, 0x1

    .line 475
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 476
    return-void

    .line 451
    .end local v0    # "immediateLog":Z
    :cond_5
    :goto_1
    return-void
.end method

.method private updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "reason"    # Ljava/lang/Integer;

    .line 486
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 490
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 491
    .local v8, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 492
    move v3, p2

    .line 493
    .local v3, "targetUid":I
    new-instance v9, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v9}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 513
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 788
    const-class v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/NativeTombstoneManager;

    .line 790
    .local v0, "tombstoneService":Lcom/android/server/os/NativeTombstoneManager;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 792
    .local v1, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 795
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 797
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v4, 0x20000

    invoke-virtual {v2, p1, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 799
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 800
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 801
    :try_start_1
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 802
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 805
    .end local v2    # "uid":I
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 806
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 807
    return-void

    .line 802
    .restart local v2    # "uid":I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method clearProcessExitInfo(Z)V
    .locals 3
    .param p1, "removeFile"    # Z

    .line 769
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 771
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 772
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 774
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 778
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 779
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 780
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 781
    monitor-exit v0

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 810
    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 812
    .local v0, "sdf":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 814
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move-object v8, v2

    .line 822
    .local v8, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-eqz v8, :cond_1

    .line 823
    const-string v4, "  "

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 826
    .end local v8    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :cond_1
    :goto_0
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 524
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 525
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 526
    .local v3, "emptyPackageName":Z
    if-nez v3, :cond_1

    .line 528
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 529
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v4, :cond_0

    .line 530
    invoke-virtual {v4, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 532
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_0
    goto :goto_1

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 535
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 537
    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, p2, v4, p3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 546
    sget-object v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 548
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 549
    .local v5, "size":I
    if-lez p4, :cond_2

    .line 550
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 552
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 553
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 555
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 557
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    .end local v5    # "size":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    nop

    .line 561
    return-void

    .line 557
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPid":I
    .end local p4    # "maxNum":I
    .end local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPid":I
    .restart local p4    # "maxNum":I
    .restart local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw v2
.end method

.method getProcessStateSummary(II)[B
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1036
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 1039
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 1040
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1041
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1043
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    monitor-exit v0

    return-object v3

    .line 1044
    .end local v1    # "k":Ljava/lang/Integer;
    .end local v2    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 19
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1063
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v8, p1

    move/from16 v4, p2

    goto/16 :goto_7

    .line 1066
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 1067
    .local v9, "size":J
    sub-long v11, p7, p5

    .line 1068
    .local v11, "length":J
    cmp-long v0, p5, v9

    if-gez v0, :cond_8

    cmp-long v0, p7, v9

    if-gtz v0, :cond_8

    const-wide/16 v3, 0x0

    cmp-long v0, v11, v3

    if-gtz v0, :cond_1

    move/from16 v8, p1

    move/from16 v4, p2

    goto/16 :goto_6

    .line 1072
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 1075
    .local v15, "outFile":Ljava/io/File;
    move-object/from16 v3, p4

    move-object v4, v15

    move-wide/from16 v5, p5

    move-wide v7, v11

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1077
    iget-object v3, v1, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1078
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move/from16 v4, p2

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1079
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 1080
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .end local p2    # "uid":I
    .local v4, "uid":I
    goto :goto_0

    .line 1100
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v4    # "uid":I
    .restart local p2    # "uid":I
    :catchall_0
    move-exception v0

    move/from16 v8, p1

    move-object v6, v15

    goto/16 :goto_4

    .line 1085
    .end local p2    # "uid":I
    .restart local v0    # "k":Ljava/lang/Integer;
    .restart local v4    # "uid":I
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 1087
    .local v5, "pending":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_3
    array-length v7, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ge v6, v7, :cond_5

    .line 1088
    :try_start_4
    iget-object v7, v1, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1090
    .local v7, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v7, :cond_3

    move/from16 v8, p1

    :try_start_5
    invoke-virtual {v7, v8, v15}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_4

    .line 1092
    const/4 v5, 0x0

    goto :goto_2

    .line 1100
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v5    # "pending":Z
    .end local v6    # "i":I
    .end local v7    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :catchall_1
    move-exception v0

    move-object v6, v15

    goto :goto_4

    .line 1090
    .restart local v0    # "k":Ljava/lang/Integer;
    .restart local v5    # "pending":Z
    .restart local v6    # "i":I
    .restart local v7    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_3
    move/from16 v8, p1

    .line 1087
    .end local v7    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1100
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v5    # "pending":Z
    .end local v6    # "i":I
    :catchall_2
    move-exception v0

    move/from16 v8, p1

    move-object v6, v15

    goto :goto_4

    .line 1087
    .restart local v0    # "k":Ljava/lang/Integer;
    .restart local v5    # "pending":Z
    .restart local v6    # "i":I
    :cond_5
    move/from16 v8, p1

    .line 1095
    .end local v6    # "i":I
    if-eqz v5, :cond_6

    .line 1097
    :try_start_6
    iget-object v13, v1, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    sget-object v17, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;

    sget-object v18, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v14, v4

    move-object v6, v15

    .end local v15    # "outFile":Ljava/io/File;
    .local v6, "outFile":Ljava/io/File;
    move/from16 v15, p1

    move-object/from16 v16, v6

    :try_start_7
    invoke-static/range {v13 .. v18}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 1100
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v5    # "pending":Z
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object v6, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v6    # "outFile":Ljava/io/File;
    goto :goto_4

    .line 1095
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v0    # "k":Ljava/lang/Integer;
    .restart local v5    # "pending":Z
    .restart local v15    # "outFile":Ljava/io/File;
    :cond_6
    move-object v6, v15

    .line 1100
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v5    # "pending":Z
    .end local v15    # "outFile":Ljava/io/File;
    .restart local v6    # "outFile":Ljava/io/File;
    :goto_3
    monitor-exit v3

    goto :goto_5

    .end local v6    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    :catchall_4
    move-exception v0

    move/from16 v8, p1

    move-object v6, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v6    # "outFile":Ljava/io/File;
    goto :goto_4

    .end local v4    # "uid":I
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :catchall_5
    move-exception v0

    move/from16 v8, p1

    move-object v6, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v6    # "outFile":Ljava/io/File;
    goto :goto_4

    .end local v6    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    :catchall_6
    move-exception v0

    move/from16 v8, p1

    move/from16 v4, p2

    move-object v6, v15

    .end local v15    # "outFile":Ljava/io/File;
    .end local p2    # "uid":I
    .restart local v4    # "uid":I
    .restart local v6    # "outFile":Ljava/io/File;
    :goto_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_4

    .line 1075
    .end local v4    # "uid":I
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :cond_7
    move/from16 v8, p1

    move/from16 v4, p2

    move-object v6, v15

    .line 1102
    .end local v15    # "outFile":Ljava/io/File;
    .end local p2    # "uid":I
    .restart local v4    # "uid":I
    .restart local v6    # "outFile":Ljava/io/File;
    :goto_5
    return-void

    .line 1068
    .end local v4    # "uid":I
    .end local v6    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :cond_8
    move/from16 v8, p1

    move/from16 v4, p2

    .line 1069
    :goto_6
    return-void

    .line 1063
    .end local v9    # "size":J
    .end local v11    # "length":J
    :cond_9
    move/from16 v8, p1

    move/from16 v4, p2

    .line 1064
    :goto_7
    return-void
.end method

.method handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 3
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 408
    nop

    .line 409
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 408
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 411
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 416
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 419
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 421
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 422
    return-void
.end method

.method handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 371
    if-eqz p1, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 377
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 381
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 382
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 381
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 383
    .local v1, "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 384
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 383
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 385
    .local v2, "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    .line 387
    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 391
    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 392
    const/4 v4, 0x3

    .line 393
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 392
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 394
    :cond_1
    if-eqz v1, :cond_2

    .line 395
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 397
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 400
    .end local v0    # "info":Landroid/app/ApplicationExitInfo;
    .end local v1    # "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    .end local v2    # "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_3
    :goto_0
    return-void
.end method

.method handleZygoteSigChld(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    .line 362
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 255
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 256
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManager:killHandler"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 258
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 259
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "procexitstore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 262
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 266
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v3, "procexitinfo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 268
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 270
    return-void
.end method

.method isFresh(J)Z
    .locals 4
    .param p1, "timestamp"    # J

    .line 1640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1642
    .local v0, "now":J
    const-wide/32 v2, 0x493e0

    add-long/2addr v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public synthetic lambda$dumpHistoryProcessExitInfo$6$AppExitInfoTracker(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "records"    # Landroid/util/SparseArray;

    .line 817
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 818
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getExitInfo$3$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2
    .param p1, "filterUid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "filterPid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "records"    # Landroid/util/SparseArray;

    .line 538
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 539
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v0, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 541
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->toListLocked(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$onSystemReady$0$AppExitInfoTracker()V
    .locals 2

    .line 277
    nop

    .line 278
    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    .line 280
    return-void
.end method

.method public synthetic lambda$updateExitInfoIfNecessaryLocked$2$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 4
    .param p1, "targetUid"    # I
    .param p2, "tlist"    # Ljava/util/ArrayList;
    .param p3, "pid"    # I
    .param p4, "status"    # Ljava/lang/Integer;
    .param p5, "reason"    # Ljava/lang/Integer;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "records"    # Landroid/util/SparseArray;

    .line 494
    invoke-virtual {p7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 495
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const/4 v1, 0x0

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 495
    if-nez v0, :cond_0

    .line 496
    return-object v2

    .line 498
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 499
    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 500
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 501
    return-object v2

    .line 503
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 504
    .local v1, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 505
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 506
    return-object v2

    .line 509
    :cond_2
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 511
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method loadExistingProcessExitInfo()V
    .locals 8

    .line 646
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 648
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 653
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 654
    .local v2, "af":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 655
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 656
    .local v3, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    .line 657
    .local v4, "next":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 659
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 667
    :pswitch_0
    int-to-long v5, v4

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    .line 661
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    const-wide v6, 0x10300000001L

    .line 663
    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 664
    monitor-exit v5

    .line 665
    goto :goto_1

    .line 664
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_2
    throw v6

    .line 658
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :goto_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v5

    goto :goto_0

    .line 674
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    :cond_1
    if-eqz v0, :cond_2

    .line 676
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 678
    :goto_2
    goto :goto_3

    .line 677
    :catch_0
    move-exception v2

    goto :goto_2

    .line 681
    :cond_2
    :goto_3
    move-object v2, v0

    goto :goto_4

    .line 674
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 671
    :catch_1
    move-exception v2

    .line 672
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 674
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 676
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 677
    :catch_2
    move-exception v2

    goto :goto_2

    .line 681
    .end local v0    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :goto_4
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 682
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 683
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 684
    monitor-exit v3

    .line 685
    return-void

    .line 684
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 674
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v0, :cond_3

    .line 676
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 678
    goto :goto_6

    .line 677
    :catch_3
    move-exception v2

    .line 680
    :cond_3
    :goto_6
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timestamp"    # J

    .line 982
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 983
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_0

    .line 984
    new-instance v1, Landroid/app/ApplicationExitInfo;

    invoke-direct {v1}, Landroid/app/ApplicationExitInfo;-><init>()V

    move-object v0, v1

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 988
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 989
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 990
    .local v2, "definingUid":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 991
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 992
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 993
    if-lez v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 994
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 995
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 996
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 999
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 1000
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 1001
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 1002
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 1003
    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 1004
    .end local v2    # "definingUid":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1006
    return-object v0

    .line 1004
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allUsers"    # Z

    .line 592
    if-eqz p1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 594
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 595
    .local v0, "removeUid":Z
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    if-eqz v0, :cond_0

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 598
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 599
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 601
    :cond_0
    :goto_0
    nop

    .line 602
    if-eqz p3, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 601
    :goto_1
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 603
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 604
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 606
    .end local v0    # "removeUid":Z
    :cond_2
    :goto_3
    return-void
.end method

.method onSystemReady()V
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 275
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 581
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 582
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 583
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 584
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 586
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistProcessExitInfo()V
    .locals 8

    .line 716
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 717
    .local v0, "af":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 718
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 720
    .local v2, "now":J
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 721
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 722
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 723
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    invoke-direct {v6, v4}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v6}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 734
    iput-wide v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 735
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :try_start_2
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 737
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 741
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 735
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 738
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "now":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :catch_0
    move-exception v4

    .line 739
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 742
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 743
    const/4 v5, 0x0

    :try_start_5
    iput-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 744
    monitor-exit v4

    .line 745
    return-void

    .line 744
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1011
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1016
    return-void
.end method

.method scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1052
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1054
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1052
    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1055
    return-void
.end method

.method scheduleNoteAppKill(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 319
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    if-nez v1, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 319
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 305
    .local v0, "raw":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v0, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 306
    invoke-virtual {v0, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 307
    invoke-virtual {v0, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v2, 0x1008

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void

    .line 301
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method scheduleNoteLmkdProcKilled(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 348
    return-void
.end method

.method scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 284
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1007

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void

    .line 285
    :cond_2
    :goto_0
    return-void
.end method

.method schedulePersistProcessExitInfo(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .line 752
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 754
    :cond_0
    if-eqz v1, :cond_1

    .line 755
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    :cond_1
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 758
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 759
    if-eqz p1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    sget-wide v3, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 758
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 761
    :cond_3
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLmkdKillListener(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    .line 338
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->setOnProcDiedListener(Ljava/util/function/BiConsumer;)V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProcessStateSummary(II[B)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "data"    # [B

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1025
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1029
    .end local v1    # "k":Ljava/lang/Integer;
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
