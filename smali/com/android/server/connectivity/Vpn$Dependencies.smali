.class public Lcom/android/server/connectivity/Vpn$Dependencies;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$resolve$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 396
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .locals 1

    .line 307
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method public getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 311
    invoke-static {p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getStateFile()Ljava/io/File;
    .locals 2

    .line 303
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/vpn/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isCallerSystem()Z
    .locals 2

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterfacePresent(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z
    .locals 1
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "iface"    # Ljava/lang/String;

    .line 409
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 295
    invoke-static {p1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServiceStopped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 9
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 364
    const-string v0, "Vpn"

    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 365
    :catch_0
    move-exception v1

    .line 369
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    .line 371
    .local v7, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_1
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v2

    .line 372
    .local v2, "resolver":Landroid/net/DnsResolver;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 373
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/net/InetAddress;>;"
    new-instance v8, Lcom/android/server/connectivity/Vpn$Dependencies$1;

    invoke-direct {v8, p0, v1, p1}, Lcom/android/server/connectivity/Vpn$Dependencies$1;-><init>(Lcom/android/server/connectivity/Vpn$Dependencies;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    .line 395
    .local v8, "cb":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 397
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 401
    .end local v1    # "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/net/InetAddress;>;"
    .end local v2    # "resolver":Landroid/net/DnsResolver;
    .end local v8    # "cb":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    :catch_1
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Legacy VPN was interrupted while resolving the endpoint"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-virtual {v7}, Landroid/os/CancellationSignal;->cancel()V

    .line 404
    throw v1

    .line 398
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 399
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot resolve VPN endpoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    throw v1
.end method

.method public sendArgumentsToDaemon(Ljava/lang/String;Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$RetryScheduler;)V
    .locals 10
    .param p1, "daemon"    # Ljava/lang/String;
    .param p2, "socket"    # Landroid/net/LocalSocket;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "retryScheduler"    # Lcom/android/server/connectivity/Vpn$RetryScheduler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 317
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 323
    .local v0, "address":Landroid/net/LocalSocketAddress;
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    nop

    .line 330
    const/16 v2, 0x1f4

    invoke-virtual {p2, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 332
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 333
    .local v2, "out":Ljava/io/OutputStream;
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, p3, v5

    .line 334
    .local v6, "argument":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 335
    .local v7, "bytes":[B
    array-length v8, v7

    const v9, 0xffff

    if-ge v8, v9, :cond_0

    .line 338
    array-length v8, v7

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 339
    array-length v8, v7

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 340
    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 341
    invoke-interface {p4, v4}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    .line 333
    .end local v6    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 336
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v7    # "bytes":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    .end local v6    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    :cond_1
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 344
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 347
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 350
    .local v3, "in":Ljava/io/InputStream;
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 351
    nop

    .line 358
    return-void

    .line 355
    :cond_2
    goto :goto_3

    .line 353
    :catch_0
    move-exception v4

    .line 356
    :goto_3
    invoke-interface {p4, v1}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_2

    .line 325
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 328
    invoke-interface {p4, v1}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_0
.end method

.method public startService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 287
    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public stopService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 291
    invoke-static {p1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 292
    return-void
.end method
