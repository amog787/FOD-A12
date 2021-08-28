.class final Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;
.super Ljava/lang/Thread;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDumperThread"
.end annotation


# instance fields
.field private final mBaseFile:Ljava/io/File;

.field private final mFileCountLimit:I

.field private final mInstance:Lcom/android/server/power/ShutdownCheckPoints;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V
    .locals 0
    .param p1, "instance"    # Lcom/android/server/power/ShutdownCheckPoints;
    .param p2, "baseFile"    # Ljava/io/File;
    .param p3, "fileCountLimit"    # I

    .line 348
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    .line 350
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 351
    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    .line 352
    return-void
.end method

.method private listCheckPointsFiles()[Ljava/io/File;
    .locals 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "filePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;-><init>(Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 385
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 386
    return-object v1
.end method

.method private writeCheckpoints(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 390
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 391
    .local v0, "tmpFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 393
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 394
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 395
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v3, v2}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 397
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ShutdownCheckPoints"

    const-string v4, "Failed to write shutdown checkpoints"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 404
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 356
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 357
    invoke-direct {p0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->listCheckPointsFiles()[Ljava/io/File;

    move-result-object v0

    .line 359
    .local v0, "checkPointFiles":[Ljava/io/File;
    array-length v1, v0

    iget v2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 360
    .local v1, "filesToDelete":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 361
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    .line 364
    const-string v2, "%s-%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 366
    .local v2, "nextCheckPointsFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->writeCheckpoints(Ljava/io/File;)V

    .line 367
    return-void
.end method
