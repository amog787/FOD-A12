.class public final Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# static fields
.field private static final DIRECT_RECL_AND_THRASHING:I = 0x5

.field public static final KILL_OCCURRED_MSG_SIZE:I = 0x50

.field private static final LOW_MEM_AND_SWAP:I = 0x3

.field private static final LOW_MEM_AND_SWAP_UTIL:I = 0x6

.field private static final LOW_MEM_AND_THRASHING:I = 0x4

.field private static final LOW_SWAP_AND_THRASHING:I = 0x2

.field private static final NOT_RESPONDING:I = 0x1

.field private static final PRESSURE_AFTER_KILL:I = 0x0

.field public static final STATE_CHANGED_MSG_SIZE:I = 0x8

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logKillOccurred(Ljava/io/DataInputStream;)V
    .locals 21
    .param p0, "inputData"    # Ljava/io/DataInputStream;

    .line 54
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 55
    .local v5, "pgFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 56
    .local v7, "pgMajFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 57
    .local v9, "rssInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 58
    .local v11, "cacheInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    .line 59
    .local v13, "swapInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    .line 60
    .local v15, "processStartTimeNS":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "uid":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 62
    .local v4, "oomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 63
    .local v17, "minOomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 64
    .local v18, "freeMemKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 65
    .local v19, "freeSwapKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 66
    .local v0, "killReason":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "procName":Ljava/lang/String;
    const/16 v1, 0x33

    .line 70
    invoke-static {v0}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v20

    .line 68
    invoke-static/range {v1 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "killReason":I
    .end local v2    # "uid":I
    .end local v3    # "procName":Ljava/lang/String;
    .end local v4    # "oomScore":I
    .end local v5    # "pgFault":J
    .end local v7    # "pgMajFault":J
    .end local v9    # "rssInBytes":J
    .end local v11    # "cacheInBytes":J
    .end local v13    # "swapInBytes":J
    .end local v15    # "processStartTimeNS":J
    .end local v17    # "minOomScore":I
    .end local v18    # "freeMemKb":I
    .end local v19    # "freeSwapKb":I
    nop

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public static logStateChanged(I)V
    .locals 1
    .param p0, "state"    # I

    .line 84
    const/16 v0, 0x36

    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 85
    return-void
.end method

.method private static mapKillReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 88
    packed-switch p0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 102
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 100
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 98
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 96
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 94
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 92
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 90
    :pswitch_6
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
