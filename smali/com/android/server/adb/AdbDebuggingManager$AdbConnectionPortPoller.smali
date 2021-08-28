.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdbConnectionPortPoller"
.end annotation


# instance fields
.field private final mAdbPortProp:Ljava/lang/String;

.field private mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDurationSecs:I

.field private mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 297
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 292
    const-string/jumbo v0, "service.adb.tls.port"

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mAdbPortProp:Ljava/lang/String;

    .line 294
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mDurationSecs:I

    .line 295
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 298
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 299
    return-void
.end method


# virtual methods
.method public cancelAndWait()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 334
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    return-void

    .line 315
    :cond_0
    const v1, 0x7fffffff

    const-string/jumbo v3, "service.adb.tls.port"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 316
    .local v1, "port":I
    if-eq v1, v2, :cond_2

    if-lez v1, :cond_1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    goto :goto_1

    .line 320
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 308
    .end local v1    # "port":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .restart local v1    # "port":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v2, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 318
    return-void

    .line 322
    .end local v0    # "i":I
    .end local v1    # "port":I
    :cond_3
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Failed to receive adb connection port"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 324
    return-void
.end method
