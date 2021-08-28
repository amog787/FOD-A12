.class final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultProcessDependencies"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1446
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .locals 1
    .param p1, "pid"    # I

    .line 1450
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    return-object v0
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3000(II)V

    goto :goto_0

    .line 1458
    :cond_0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3000(II)V

    goto :goto_0

    .line 1460
    :cond_1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1461
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3000(II)V

    .line 1463
    :cond_2
    :goto_0
    return-void
.end method
