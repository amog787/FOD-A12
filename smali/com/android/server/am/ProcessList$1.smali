.class Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessList;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;

    .line 815
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .locals 5
    .param p1, "inputData"    # Ljava/io/DataInputStream;
    .param p2, "receivedLen"    # I

    .line 842
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 843
    return v0

    .line 847
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 872
    :pswitch_0
    return v0

    .line 864
    :pswitch_1
    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    .line 866
    return v0

    .line 868
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 869
    .local v1, "state":I
    invoke-static {v1}, Lcom/android/server/am/LmkdStatsReporter;->logStateChanged(I)V

    .line 870
    return v2

    .line 857
    .end local v1    # "state":I
    :pswitch_2
    const/16 v1, 0x50

    if-ge p2, v1, :cond_2

    .line 859
    return v0

    .line 861
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;)V

    .line 862
    return v2

    .line 849
    :pswitch_3
    const/16 v1, 0xc

    if-eq p2, v1, :cond_3

    .line 850
    return v0

    .line 852
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 853
    .local v1, "pid":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 854
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteLmkdProcKilled(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    return v2

    .line 874
    .end local v1    # "pid":I
    .end local v3    # "uid":I
    :catch_0
    move-exception v1

    .line 875
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v1    # "e":Ljava/io/IOException;
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .locals 3
    .param p1, "replyBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "dataReceived"    # Ljava/nio/ByteBuffer;
    .param p3, "receivedLen"    # I

    .line 835
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 836
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 835
    :goto_0
    return v1
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 818
    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->onLmkdConnect(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public onDisconnect()V
    .locals 4

    .line 824
    const-string v0, "ActivityManager"

    const-string v1, "Lost connection to lmkd"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 828
    return-void
.end method
