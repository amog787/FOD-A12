.class public abstract Lcom/android/server/location/injector/UserInfoHelper;
.super Ljava/lang/Object;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/UserInfoHelper$UserListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 71
    iget-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method protected final dispatchOnCurrentUserChanged(II)V
    .locals 9
    .param p1, "fromUserId"    # I
    .param p2, "toUserId"    # I

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v0

    .line 104
    .local v0, "fromUserIds":[I
    invoke-virtual {p0, p2}, Lcom/android/server/location/injector/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v1

    .line 105
    .local v1, "toUserIds":[I
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user changed from u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->logUserSwitched(II)V

    .line 111
    iget-object v2, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 112
    .local v3, "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    array-length v6, v0

    :goto_1
    if-ge v4, v6, :cond_1

    aget v7, v0, v4

    .line 113
    .local v7, "userId":I
    invoke-interface {v3, v7, v5}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 112
    .end local v7    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v3    # "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    :cond_1
    goto :goto_0

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 118
    .restart local v3    # "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    array-length v6, v1

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_3

    aget v8, v1, v7

    .line 119
    .local v8, "userId":I
    invoke-interface {v3, v8, v5}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 118
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 121
    .end local v3    # "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    :cond_3
    goto :goto_2

    .line 122
    :cond_4
    return-void
.end method

.method protected final dispatchOnUserStarted(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 82
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 87
    .local v1, "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 88
    .end local v1    # "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method protected final dispatchOnUserStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 92
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 97
    .local v1, "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 98
    .end local v1    # "listener":Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getCurrentUserId()I
.end method

.method protected abstract getProfileIds(I)[I
.end method

.method public abstract getRunningUserIds()[I
.end method

.method public abstract isCurrentUserId(I)Z
.end method

.method public final removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 78
    iget-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method
