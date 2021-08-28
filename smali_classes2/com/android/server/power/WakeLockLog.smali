.class final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$Injector;,
        Lcom/android/server/power/WakeLockLog$TagData;,
        Lcom/android/server/power/WakeLockLog$TagDatabase;,
        Lcom/android/server/power/WakeLockLog$TheLog;,
        Lcom/android/server/power/WakeLockLog$EntryByteTranslator;,
        Lcom/android/server/power/WakeLockLog$LogEntry;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z = false

.field private static final FLAG_ACQUIRE_CAUSES_WAKEUP:I = 0x10

.field private static final FLAG_ON_AFTER_RELEASE:I = 0x8

.field private static final LEVEL_DOZE_WAKE_LOCK:I = 0x6

.field private static final LEVEL_DRAW_WAKE_LOCK:I = 0x7

.field private static final LEVEL_FULL_WAKE_LOCK:I = 0x2

.field private static final LEVEL_PARTIAL_WAKE_LOCK:I = 0x1

.field private static final LEVEL_PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x5

.field private static final LEVEL_SCREEN_BRIGHT_WAKE_LOCK:I = 0x4

.field private static final LEVEL_SCREEN_DIM_WAKE_LOCK:I = 0x3

.field private static final LEVEL_TO_STRING:[Ljava/lang/String;

.field private static final LEVEL_UNKNOWN:I = 0x0

.field private static final LOG_SIZE:I = 0x2800

.field private static final LOG_SIZE_MIN:I = 0xa

.field private static final MASK_LOWER_6_BITS:I = 0x3f

.field private static final MASK_LOWER_7_BITS:I = 0x7f

.field private static final MAX_LOG_ENTRY_BYTE_SIZE:I = 0x9

.field private static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PowerManagerService.WLLog"

.field private static final TAG_DATABASE_SIZE:I = 0x80

.field private static final TAG_DATABASE_SIZE_MAX:I = 0x80

.field private static final TYPE_ACQUIRE:I = 0x1

.field private static final TYPE_RELEASE:I = 0x2

.field private static final TYPE_TIME_RESET:I


# instance fields
.field private final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field private final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    const-string v0, "unknown"

    const-string v1, "partial"

    const-string v2, "full"

    const-string v3, "screen-dim"

    const-string v4, "screen-bright"

    const-string v5, "prox"

    const-string v6, "doze"

    const-string v7, "draw"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 113
    const-string v0, "*job*/"

    const-string v1, "*gms_scheduler*/"

    const-string v2, "IntentOp:"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {v0}, Lcom/android/server/power/WakeLockLog$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 136
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 137
    new-instance v1, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;-><init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 138
    .local v1, "translator":Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 140
    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method private handleWakeLockEventInternal(ILjava/lang/String;IIJ)V
    .locals 9
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I
    .param p5, "time"    # J

    .line 248
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v7

    .line 251
    .local v7, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance v2, Lcom/android/server/power/WakeLockLog$LogEntry;

    move-object v3, v2

    move-wide v4, p5

    move v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 252
    .end local v7    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onWakeLockEvent(ILjava/lang/String;II)V
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I

    .line 223
    if-nez p2, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient data to log wakelock [tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, "PowerManagerService.WLLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/WakeLockLog$Injector;->currentTimeMillis()J

    move-result-wide v8

    .line 231
    .local v8, "time":J
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 232
    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog;->translateFlagsFromPowerManager(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    nop

    .line 234
    .local v5, "translatedFlags":I
    invoke-direct {p0, p2}, Lcom/android/server/power/WakeLockLog;->tagNameReducer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/WakeLockLog;->handleWakeLockEventInternal(ILjava/lang/String;IIJ)V

    .line 236
    return-void
.end method

.method private tagNameReducer(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 316
    .local v0, "reduciblePrefix":Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 317
    .local v5, "reducedTagPrefix":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 318
    move-object v0, v5

    .line 319
    goto :goto_1

    .line 316
    .end local v5    # "reducedTagPrefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 330
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    .local v2, "end":I
    const/4 v4, 0x1

    .line 332
    .local v4, "printNext":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 333
    .local v5, "index":I
    :goto_2
    if-ge v5, v2, :cond_7

    .line 334
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 335
    .local v6, "c":C
    const/16 v7, 0x2e

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v3

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v7, 0x1

    .line 337
    .local v7, "isMarker":Z
    :goto_4
    if-nez v7, :cond_5

    if-eqz v4, :cond_6

    .line 338
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_6
    move v4, v7

    .line 333
    .end local v6    # "c":C
    .end local v7    # "isMarker":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 342
    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 345
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "end":I
    .end local v4    # "printNext":Z
    .end local v5    # "index":I
    :cond_8
    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    .line 171
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "includeTagDb"    # Z

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    const-string v1, "Wake Lock Log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v1}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 179
    .local v1, "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v2, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;

    move-result-object v2

    .line 180
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    const/4 v3, 0x0

    .line 181
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .line 182
    .local v4, "numResets":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    const/4 v5, 0x0

    .line 188
    .local v5, "address":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 189
    .local v6, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    if-eqz v6, :cond_1

    .line 190
    iget v7, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v7, :cond_0

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 197
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v7}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 200
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    :cond_1
    :goto_1
    goto :goto_0

    .line 201
    :cond_2
    const-string v5, "  -"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Events: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Time-Resets: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Buffer, Bytes used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog;->getUsedBufferSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    if-eqz p2, :cond_3

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .end local v1    # "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    .end local v3    # "numEvents":I
    .end local v4    # "numResets":I
    :cond_3
    monitor-exit v0

    .line 210
    goto :goto_2

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "includeTagDb":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    .restart local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "includeTagDb":Z
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception dumping wake-lock log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public onWakeLockAcquired(Ljava/lang/String;II)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "flags"    # I

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    .line 151
    return-void
.end method

.method public onWakeLockReleased(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 160
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    .line 161
    return-void
.end method

.method translateFlagsFromPowerManager(I)I
    .locals 3
    .param p1, "flags"    # I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "newFlags":I
    const v1, 0xffff

    and-int/2addr v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported lock level for logging, flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :sswitch_0
    const/4 v0, 0x7

    .line 285
    goto :goto_0

    .line 281
    :sswitch_1
    const/4 v0, 0x6

    .line 282
    goto :goto_0

    .line 287
    :sswitch_2
    const/4 v0, 0x5

    .line 288
    goto :goto_0

    .line 278
    :sswitch_3
    const/4 v0, 0x2

    .line 279
    goto :goto_0

    .line 275
    :sswitch_4
    const/4 v0, 0x4

    .line 276
    goto :goto_0

    .line 272
    :sswitch_5
    const/4 v0, 0x3

    .line 273
    goto :goto_0

    .line 269
    :sswitch_6
    const/4 v0, 0x1

    .line 270
    nop

    .line 293
    :goto_0
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 294
    or-int/lit8 v0, v0, 0x10

    .line 296
    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 297
    or-int/lit8 v0, v0, 0x8

    .line 299
    :cond_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x6 -> :sswitch_5
        0xa -> :sswitch_4
        0x1a -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
