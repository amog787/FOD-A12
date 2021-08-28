.class public Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Batch"
.end annotation


# static fields
.field private static final CREATE_APP_DATA_BATCH_SIZE:I = 0x100


# instance fields
.field private final mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CreateAppDataArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mExecuted:Z

.field private final mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_0

    .line 292
    invoke-static/range {p1 .. p7}, Lcom/android/server/pm/Installer;->access$100(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroid/os/CreateAppDataArgs;

    move-result-object v0

    .line 294
    .local v0, "args":Landroid/os/CreateAppDataArgs;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 295
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-object v1

    .line 290
    .end local v0    # "args":Landroid/os/CreateAppDataArgs;
    .end local v1    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/android/server/pm/Installer$Batch;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .end local p5    # "appId":I
    .end local p6    # "seInfo":Ljava/lang/String;
    .end local p7    # "targetSdkVersion":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .locals 9
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_4

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 312
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 313
    sub-int v2, v0, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [Landroid/os/CreateAppDataArgs;

    .line 315
    .local v2, "args":[Landroid/os/CreateAppDataArgs;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v5, v1, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CreateAppDataArgs;

    aput-object v4, v2, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    .end local v3    # "j":I
    .end local p0    # "this":Lcom/android/server/pm/Installer$Batch;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v3

    .line 319
    .local v3, "results":[Landroid/os/CreateAppDataResult;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 320
    aget-object v5, v3, v4

    .line 321
    .local v5, "result":Landroid/os/CreateAppDataResult;
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v7, v1, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    .line 322
    .local v6, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v7, :cond_1

    .line 323
    iget-wide v7, v5, Landroid/os/CreateAppDataResult;->ceDataInode:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_3

    .line 325
    :cond_1
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v8, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v5    # "result":Landroid/os/CreateAppDataResult;
    .end local v6    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 312
    .end local v2    # "args":[Landroid/os/CreateAppDataArgs;
    .end local v3    # "results":[Landroid/os/CreateAppDataResult;
    .end local v4    # "j":I
    :cond_2
    add-int/lit16 v1, v1, 0x100

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 308
    .end local v0    # "size":I
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local p1    # "installer":Lcom/android/server/pm/Installer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
