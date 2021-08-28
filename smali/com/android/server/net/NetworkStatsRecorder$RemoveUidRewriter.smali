.class public Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUidRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollection;

.field private final mUids:[I


# direct methods
.method public constructor <init>(J[I)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "uids"    # [I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    .line 392
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    .line 393
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->clearDirty()V

    .line 404
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 405
    return-void
.end method

.method public reset()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 398
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/OutputStream;)V

    .line 415
    return-void
.end method
