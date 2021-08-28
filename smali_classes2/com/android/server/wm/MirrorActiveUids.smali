.class Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    }
.end annotation


# instance fields
.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/MirrorActiveUids$UidRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NumNonAppVisibleWindowByUid:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 81
    .local v1, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    iget v2, v1, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mNumNonAppVisibleWindow:I

    if-lez v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mNumNonAppVisibleWindow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .end local v1    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getUidState(I)I
    .locals 2
    .param p1, "uid"    # I

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 56
    .local v0, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mProcState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_0
    const/16 v1, 0x14

    :goto_0
    monitor-exit p0

    return v1

    .line 54
    .end local v0    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized hasNonAppVisibleWindow(I)Z
    .locals 2
    .param p1, "uid"    # I

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 74
    .local v0, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mNumNonAppVisibleWindow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 72
    .end local v0    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onNonAppSurfaceVisibilityChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "visible"    # Z

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 62
    .local v0, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    if-eqz v0, :cond_1

    .line 63
    iget v1, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mNumNonAppVisibleWindow:I

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mNumNonAppVisibleWindow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_1
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p1    # "uid":I
    .end local p2    # "visible":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidActive(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 36
    .local v0, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    if-nez v0, :cond_0

    .line 37
    new-instance v1, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/MirrorActiveUids$UidRecord;-><init>(Lcom/android/server/wm/MirrorActiveUids$1;)V

    move-object v0, v1

    .line 38
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_0
    iput p2, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mProcState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 34
    .end local v0    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidInactive(I)V
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidProcStateChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;

    .line 49
    .local v0, "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    if-eqz v0, :cond_0

    .line 50
    iput p2, v0, Lcom/android/server/wm/MirrorActiveUids$UidRecord;->mProcState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "r":Lcom/android/server/wm/MirrorActiveUids$UidRecord;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
