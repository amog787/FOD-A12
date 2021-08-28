.class final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemServerDumper"
.end annotation


# instance fields
.field private final mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method private constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 1

    .line 642
    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 644
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SystemServer;
    .param p2, "x1"    # Lcom/android/server/SystemServer$1;

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer$SystemServerDumper;Lcom/android/server/Dumpable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer$SystemServerDumper;
    .param p1, "x1"    # Lcom/android/server/Dumpable;

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;->addDumpable(Lcom/android/server/Dumpable;)V

    return-void
.end method

.method private addDumpable(Lcom/android/server/Dumpable;)V
    .locals 3
    .param p1, "dumpable"    # Lcom/android/server/Dumpable;

    .line 695
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 651
    .local v2, "hasArgs":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 652
    if-eqz v2, :cond_2

    :try_start_0
    const-string v4, "--list"

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 654
    .local v0, "dumpablesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 655
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 657
    .end local v1    # "i":I
    :cond_1
    monitor-exit v3

    return-void

    .line 691
    .end local v0    # "dumpablesSize":I
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 660
    :cond_2
    if-eqz v2, :cond_5

    const-string v4, "--name"

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    array-length v4, p3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 662
    const-string v0, "Must pass at least one argument to --name"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    monitor-exit v3

    return-void

    .line 665
    :cond_3
    aget-object v4, p3, v1

    .line 666
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/Dumpable;

    .line 667
    .local v6, "dumpable":Lcom/android/server/Dumpable;
    if-nez v6, :cond_4

    .line 668
    const-string v5, "No dummpable named %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {p2, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 669
    monitor-exit v3

    return-void

    .line 672
    :cond_4
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    :try_start_1
    array-length v1, p3

    invoke-static {p3, v5, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 675
    .local v1, "actualArgs":[Ljava/lang/String;
    invoke-interface {v6, v0, v1}, Lcom/android/server/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    .end local v1    # "actualArgs":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 677
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 672
    .restart local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_4
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_2
    throw v1

    .line 680
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "dumpable":Lcom/android/server/Dumpable;
    .restart local v2    # "hasArgs":Z
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 681
    .local v4, "dumpablesSize":I
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, p2, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 682
    .local v5, "ipw":Landroid/util/IndentingPrintWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_6

    .line 683
    :try_start_5
    iget-object v7, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/Dumpable;

    .line 684
    .local v7, "dumpable":Lcom/android/server/Dumpable;
    const-string v8, "%s:\n"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-interface {v7}, Lcom/android/server/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 685
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 686
    invoke-interface {v7, v5, p3}, Lcom/android/server/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 687
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 688
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 682
    .end local v7    # "dumpable":Lcom/android/server/Dumpable;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 681
    .end local v6    # "i":I
    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_4
    throw v0

    .line 690
    .restart local v2    # "hasArgs":Z
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    .line 691
    .end local v4    # "dumpablesSize":I
    .end local v5    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3

    .line 692
    return-void

    .line 691
    :goto_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
