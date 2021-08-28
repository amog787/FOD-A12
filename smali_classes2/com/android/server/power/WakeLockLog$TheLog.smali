.class Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TheLog"
.end annotation


# instance fields
.field private final mBuffer:[B

.field private mChangeCount:J

.field private mEnd:I

.field private mLatestTime:J

.field private final mReadWriteTempBuffer:[B

.field private mStart:I

.field private mStartTime:J

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

.field private final mTempBuffer:[B

.field private final mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;
    .param p2, "translator"    # Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .param p3, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const/16 v0, 0x9

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 703
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 718
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 724
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 731
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 736
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 741
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getLogSize()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 742
    .local v0, "logSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 744
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    .line 745
    iput-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 749
    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;)V

    invoke-virtual {p3, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V

    .line 754
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WakeLockLog$TheLog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;
    .param p1, "x1"    # I

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->removeTagIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 688
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/WakeLockLog$TheLog;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 688
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    return-object v0
.end method

.method private getAvailableSpace()I
    .locals 3

    .line 956
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    goto :goto_0

    .line 957
    :cond_0
    if-ge v0, v1, :cond_1

    sub-int v2, v1, v0

    goto :goto_0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v0

    .line 956
    :goto_0
    return v2
.end method

.method private isBufferEmpty()Z
    .locals 2

    .line 987
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeSpace(I)Z
    .locals 2
    .param p1, "spaceNeeded"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 941
    const/4 v0, 0x0

    return v0

    .line 946
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_1

    .line 947
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->removeOldestItem()V

    goto :goto_0

    .line 949
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 4
    .param p1, "index"    # I
    .param p2, "timeReference"    # J
    .param p4, "entryToSet"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 1000
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1001
    .local v1, "indexIntoMainBuffer":I
    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v1, v3, :cond_0

    .line 1002
    goto :goto_1

    .line 1004
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v0

    .line 999
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method private removeOldestItem()V
    .locals 6

    .line 965
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    return-void

    .line 971
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    .line 975
    .local v0, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    .line 976
    .local v1, "size":I
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 977
    iget-wide v2, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 978
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 979
    return-void
.end method

.method private removeTagIndex(I)V
    .locals 9
    .param p1, "tagIndex"    # I

    .line 900
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    return-void

    .line 904
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 905
    .local v0, "readIndex":I
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 906
    .local v1, "timeReference":J
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 907
    .local v3, "reusableEntryInstance":Lcom/android/server/power/WakeLockLog$LogEntry;
    :goto_0
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, v4, :cond_3

    .line 908
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v4

    .line 912
    .local v4, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    if-nez v4, :cond_1

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry is unreadable - Unexpected @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    goto :goto_1

    .line 916
    :cond_1
    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v5, p1, :cond_2

    .line 919
    iput-object v6, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 920
    invoke-direct {p0, v0, v4, v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V

    .line 925
    :cond_2
    iget-wide v1, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 926
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v5

    .line 927
    .local v5, "entryByteSize":I
    add-int v6, v0, v5

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v7, v7

    rem-int v0, v6, v7

    .line 928
    .end local v4    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v5    # "entryByteSize":I
    goto :goto_0

    .line 929
    :cond_3
    :goto_1
    return-void
.end method

.method private writeBytesAt(I[BI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .line 1036
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1037
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1038
    .local v1, "indexIntoMainBuffer":I
    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    .line 1036
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p3, "timeReference"    # J

    .line 1017
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 1018
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 1025
    :cond_0
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 773
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 779
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 780
    return-void

    .line 781
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 785
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 786
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 789
    :cond_2
    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    if-gtz v0, :cond_3

    goto :goto_0

    .line 796
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->makeSpace(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 797
    return-void

    .line 805
    :cond_4
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 810
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 811
    iget-wide v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 813
    iget-object v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-wide v2, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-static {v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V

    .line 814
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 815
    return-void

    .line 790
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log entry size is out of expected range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
    .locals 1
    .param p1, "tempEntry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ">;"
        }
    .end annotation

    .line 827
    new-instance v0, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    return-object v0
.end method

.method getUsedBufferSize()I
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
