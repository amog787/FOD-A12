.class Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TombstoneFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
    }
.end annotation


# instance fields
.field mAppId:I

.field mCrashReason:Ljava/lang/String;

.field final mPfd:Landroid/os/ParcelFileDescriptor;

.field mPid:I

.field mProcessName:Ljava/lang/String;

.field mPurged:Z

.field final mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field mTimestampMs:J

.field mUid:I

.field mUserId:I


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 324
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 327
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 328
    return-void
.end method

.method static parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;
    .locals 17
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 391
    .local v1, "is":Ljava/io/FileInputStream;
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 393
    .local v2, "stream":Landroid/util/proto/ProtoInputStream;
    const/4 v0, 0x0

    .line 394
    .local v0, "pid":I
    const/4 v3, 0x0

    .line 395
    .local v3, "uid":I
    const/4 v4, 0x0

    .line 396
    .local v4, "processName":Ljava/lang/String;
    const-string v5, ""

    .line 397
    .local v5, "crashReason":Ljava/lang/String;
    const-string v6, ""

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    .line 400
    .end local v0    # "pid":I
    .local v3, "pid":I
    .local v4, "uid":I
    .local v5, "processName":Ljava/lang/String;
    .local v6, "crashReason":Ljava/lang/String;
    .local v7, "selinuxLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, ""

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    .line 401
    :try_start_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 442
    goto :goto_0

    .line 417
    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    goto :goto_0

    .line 422
    :cond_1
    const-wide v10, 0x20b0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 424
    .local v10, "token":J
    :goto_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 425
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 431
    goto :goto_1

    .line 427
    :pswitch_0
    const-wide v8, 0x10900000001L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 428
    .end local v6    # "crashReason":Ljava/lang/String;
    .local v0, "crashReason":Ljava/lang/String;
    move-object v6, v0

    .line 434
    .end local v0    # "crashReason":Ljava/lang/String;
    .restart local v6    # "crashReason":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 435
    goto :goto_0

    .line 411
    .end local v10    # "token":J
    :sswitch_1
    if-nez v5, :cond_0

    .line 412
    const-wide v8, 0x20900000009L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 438
    :sswitch_2
    const-wide v8, 0x10900000008L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 439
    goto :goto_0

    .line 407
    :sswitch_3
    const-wide v8, 0x10d00000007L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    move v4, v0

    .line 408
    goto :goto_0

    .line 403
    :sswitch_4
    const-wide v8, 0x10d00000005L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    .line 404
    goto :goto_0

    .line 448
    :cond_3
    nop

    .line 450
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 451
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tombstone\'s UID ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") not an app, ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 455
    :cond_4
    const-wide/16 v9, 0x0

    .line 457
    .local v9, "timestampMs":J
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 458
    .local v0, "stat":Landroid/system/StructStat;
    iget-object v11, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v11, v11, Landroid/system/StructTimespec;->tv_sec:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iget-object v13, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v13, v13, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/32 v15, 0xf4240

    div-long/2addr v13, v15
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    add-long v9, v11, v13

    .line 461
    .end local v0    # "stat":Landroid/system/StructStat;
    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ex":Landroid/system/ErrnoException;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to get timestamp of tombstone"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 464
    .local v0, "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 466
    .local v11, "appId":I
    const-string/jumbo v12, "u:r:untrusted_app"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 467
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tombstone has invalid selinux label ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    .line 471
    :cond_5
    new-instance v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 473
    .local v12, "result":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    iput v0, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    .line 474
    iput v11, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    .line 475
    iput v3, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 476
    iput v4, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 477
    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v8, v5

    :goto_3
    iput-object v8, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 478
    iput-wide v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 479
    iput-object v6, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    .line 481
    invoke-static {v12}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    return-object v8

    .line 445
    .end local v0    # "userId":I
    .end local v9    # "timestampMs":J
    .end local v11    # "appId":I
    .end local v12    # "result":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 446
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to parse tombstone"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    return-void
.end method

.method public getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-object v0
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .locals 6
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 347
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 348
    return v1

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v0, v2, :cond_1

    .line 352
    return v1

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-eq v0, v2, :cond_2

    .line 356
    return v1

    .line 359
    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 360
    return v1

    .line 363
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 331
    .local p1, "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local p2, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 332
    return v1

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    if-eq v0, v2, :cond_1

    .line 336
    return v1

    .line 339
    :cond_1
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    if-eq v0, v2, :cond_2

    .line 340
    return v1

    .line 343
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public purge()V
    .locals 3

    .line 371
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    if-nez v0, :cond_0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/system/ErrnoException;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to truncate tombstone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 387
    :cond_0
    return-void
.end method

.method public toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .locals 4

    .line 489
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 490
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 491
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 492
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 493
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 494
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 495
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 502
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 503
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 504
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 507
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 508
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 510
    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 511
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 514
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    .line 516
    return-object v0
.end method
