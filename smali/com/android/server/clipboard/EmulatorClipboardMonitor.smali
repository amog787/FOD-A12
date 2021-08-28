.class Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "EmulatorClipboardMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/content/ClipData;",
        ">;"
    }
.end annotation


# static fields
.field private static final HOST_PORT:I = 0x1388

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"

.field private static final TAG:Ljava/lang/String; = "EmulatorClipboardMonitor"


# instance fields
.field private final mHostMonitorThread:Ljava/lang/Thread;

.field private mPipe:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "setAndroidClipboard":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/ClipData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mHostMonitorThread:Ljava/lang/Thread;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method private declared-synchronized closePipe()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Lcom/android/server/clipboard/EmulatorClipboardMonitor;
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    .restart local p0    # "this":Lcom/android/server/clipboard/EmulatorClipboardMonitor;
    :catch_1
    move-exception v0

    .line 91
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private static createOpenHandshake()[B
    .locals 3

    .line 49
    const-string/jumbo v0, "pipe:clipboard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 50
    .local v1, "bits":[B
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 51
    return-object v1
.end method

.method private isPipeOpened()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized openPipe()Z
    .locals 6

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    return v1

    .line 64
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sget v2, Landroid/system/OsConstants;->AF_VSOCK:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v2, v3, v0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_2
    new-instance v3, Landroid/system/VmSocketAddress;

    const/16 v4, 0x1388

    sget v5, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    invoke-direct {v3, v4, v5}, Landroid/system/VmSocketAddress;-><init>(II)V

    invoke-static {v2, v3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 69
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->createOpenHandshake()[B

    move-result-object v3

    .line 70
    .local v3, "handshake":[B
    array-length v4, v3

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 71
    iput-object v2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return v1

    .line 73
    .end local v3    # "handshake":[B
    .end local p0    # "this":Lcom/android/server/clipboard/EmulatorClipboardMonitor;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 79
    :goto_0
    monitor-exit p0

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private receiveMessage()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 95
    .local v0, "lengthBits":[B
    iget-object v1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 97
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 98
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 101
    .local v2, "msgLen":I
    new-array v4, v2, [B

    .line 102
    .local v4, "msg":[B
    iget-object v5, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    array-length v6, v4

    invoke-static {v5, v4, v3, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 104
    return-object v4
.end method

.method private sendMessage([B)V
    .locals 5
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 109
    .local v0, "lengthBits":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 114
    iget-object v2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    array-length v3, p1

    invoke-static {v2, p1, v4, v3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 115
    return-void
.end method

.method private setHostClipboardImpl(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->isPipeOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->sendMessage([B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set host clipboard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmulatorClipboardMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 167
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/ClipData;)V
    .locals 2
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setHostClipboardImpl(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setHostClipboardImpl(Ljava/lang/String;)V

    .line 156
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->accept(Landroid/content/ClipData;)V

    return-void
.end method

.method public synthetic lambda$new$0$EmulatorClipboardMonitor(Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "setAndroidClipboard"    # Ljava/util/function/Consumer;

    .line 119
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->receiveMessage()[B

    move-result-object v0

    .line 130
    .local v0, "receivedData":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "host clipboard"

    const-string/jumbo v4, "text/plain"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 135
    .local v2, "clip":Landroid/content/ClipData;
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "receivedData":[B
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "clip":Landroid/content/ClipData;
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->closePipe()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method
