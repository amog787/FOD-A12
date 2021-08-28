.class Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 1
    .param p1, "collection"    # Lcom/android/server/net/NetworkStatsCollection;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const-string/jumbo v0, "missing NetworkStatsCollection"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 358
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 368
    return-void
.end method

.method public reset()V
    .locals 0

    .line 363
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .line 372
    const/4 v0, 0x1

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

    .line 377
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/OutputStream;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 379
    return-void
.end method
