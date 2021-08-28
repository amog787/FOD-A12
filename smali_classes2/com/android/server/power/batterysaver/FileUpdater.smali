.class public Lcom/android/server/power/batterysaver/FileUpdater;
.super Ljava/lang/Object;
.source "FileUpdater.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PROP_SKIP_WRITE:Ljava/lang/String; = "debug.batterysaver.no_write_files"

.field private static final TAG:Ljava/lang/String; = "BatterySaverController"

.field private static final TAG_DEFAULT_ROOT:Ljava/lang/String; = "defaults"


# instance fields
.field private final MAX_RETRIES:I

.field private final RETRY_INTERVAL_MS:J

.field private final mContext:Landroid/content/Context;

.field private final mDefaultValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWrites:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x1388

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;Landroid/os/Looper;II)V

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "maxRetries"    # I
    .param p4, "retryIntervalMs"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 173
    new-instance v0, Lcom/android/server/power/batterysaver/FileUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/FileUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/FileUpdater;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    .line 114
    iput-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    .line 117
    iput p3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    .line 118
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    .line 119
    return-void
.end method

.method private cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    .local p1, "source":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method private doWtf(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method private ensureDefaultLoaded(Ljava/lang/String;)Z
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 269
    monitor-exit v0

    return v2

    .line 271
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .local v0, "originalValue":Ljava/lang/String;
    nop

    .line 282
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_2
    iget-object v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->saveDefaultValuesLocked()V

    .line 285
    monitor-exit v1

    .line 286
    return v2

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 275
    .end local v0    # "originalValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unable to read from file"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x0

    return v1

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getKeysString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 177
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleWriteOnHandler()V
    .locals 7

    .line 195
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 197
    monitor-exit v0

    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 206
    .local v1, "writes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "needRetry":Z
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 213
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 214
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, "file":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .local v5, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->ensureDefaultLoaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    goto :goto_1

    .line 225
    :cond_1
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    goto :goto_1

    .line 228
    :catch_0
    move-exception v6

    .line 229
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 213
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->scheduleRetry()V

    .line 235
    :cond_3
    return-void

    .line 206
    .end local v0    # "needRetry":Z
    .end local v1    # "writes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removePendingWrite(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveDefaultValuesLocked()V
    .locals 6

    .line 313
    const-string v0, "defaults"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 315
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 317
    .local v2, "outs":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 318
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 321
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 322
    .local v3, "out":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 328
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 332
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v3    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatterySaverController"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private scheduleRetry()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 246
    monitor-exit v0

    return-void

    .line 249
    :cond_0
    iget v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 250
    iget v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    if-le v1, v2, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gave up writing files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->getKeysString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->doWtf(Ljava/lang/String;)V

    .line 252
    monitor-exit v0

    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getDefaultValuesForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    return-object v0
.end method

.method injectDefaultValuesFilename()Ljava/io/File;
    .locals 3

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "battery-saver"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 394
    new-instance v1, Ljava/io/File;

    const-string v2, "default-values.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldSkipWrite()Z
    .locals 2

    .line 399
    const-string v0, "debug.batterysaver.no_write_files"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectShouldSkipWrite()Z

    move-result v0

    const-string v1, "BatterySaverController"

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped writing to \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 303
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    .end local v0    # "out":Ljava/io/FileWriter;
    nop

    .line 309
    return-void

    .line 303
    .restart local v0    # "out":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/power/batterysaver/FileUpdater;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 305
    .end local v0    # "out":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/power/batterysaver/FileUpdater;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed writing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    throw v0
.end method

.method injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 388
    const-string v0, "BatterySaverController"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return-void
.end method

.method public synthetic lambda$new$0$FileUpdater()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->handleWriteOnHandler()V

    return-void
.end method

.method loadDefaultValuesLocked()Z
    .locals 13

    .line 342
    const-string v0, "BatterySaverController"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 346
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 347
    .local v2, "read":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v6

    .line 351
    .local v6, "parser":Landroid/util/TypedXmlPullParser;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v4, :cond_4

    .line 352
    const/4 v7, 0x2

    if-eq v8, v7, :cond_1

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {v6}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    .line 357
    .local v7, "depth":I
    invoke-interface {v6}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .local v9, "tag":Ljava/lang/String;
    const-string v10, "defaults"

    if-ne v7, v4, :cond_3

    .line 359
    :try_start_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid root tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    nop

    .line 369
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    :cond_2
    return v3

    .line 365
    :cond_3
    :try_start_4
    new-array v11, v4, [Ljava/lang/String;

    .line 366
    .local v11, "tagName":[Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v6, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v10

    .line 368
    .end local v7    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v11    # "tagName":[Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v6    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v8    # "type":I
    :cond_4
    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 347
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v2    # "read":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/power/batterysaver/FileUpdater;
    :cond_5
    :goto_1
    throw v6
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 371
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v2    # "read":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/power/batterysaver/FileUpdater;
    :catch_0
    move-exception v5

    .line 372
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 369
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .line 373
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_2
    nop

    .line 374
    :goto_3
    if-eqz v2, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 377
    return v4

    .line 379
    :cond_7
    return v3
.end method

.method public restoreDefault()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 3
    .param p1, "runtimeRestarted"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    if-eqz p1, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->loadDefaultValuesLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "BatterySaverController"

    const-string v2, "Default values loaded after runtime restart; writing them..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 133
    :cond_1
    :goto_0
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeFiles(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 142
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    nop

    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 154
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
