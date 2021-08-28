.class public Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkStatsSubscriptionsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;,
        Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "delegate"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    .line 84
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 87
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 88
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 89
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    .line 90
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    .line 46
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    return-object v0
.end method

.method private getActiveSubIdList(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 6
    .param p1, "subscriptionManager"    # Landroid/telephony/SubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v1

    .line 140
    .local v1, "ids":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method

.method private handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 175
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAT type listener unregistered for sub "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkStats"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    .line 183
    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$200(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-interface {v0, v2, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;->onCollapsedRatTypeChanged(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method static synthetic lambda$getRatTypeForSubscriberId$3(Ljava/lang/String;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z
    .locals 1
    .param p0, "subscriberId"    # Ljava/lang/String;
    .param p1, "it"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 152
    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$200(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSubscriptionsChanged$1(Landroid/util/Pair;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z
    .locals 2
    .param p0, "sub"    # Landroid/util/Pair;
    .param p1, "it"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 113
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->equalsKey(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSubscriptionsChanged$2(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;Landroid/util/Pair;)Z
    .locals 2
    .param p0, "listener"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    .param p1, "it"    # Landroid/util/Pair;

    .line 130
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->equalsKey(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRatTypeForSubscriberId(Ljava/lang/String;)I
    .locals 2
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 153
    .local v0, "match":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$000(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$onSubscriptionsChanged$0$NetworkStatsSubscriptionsMonitor(Ljava/lang/Integer;)Landroid/util/Pair;
    .locals 2
    .param p1, "subId"    # Ljava/lang/Integer;

    .line 104
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "subscriberId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public onSubscriptionsChanged()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->getActiveSubIdList(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "newSubs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)V

    .line 103
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "filteredNewSubs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 112
    .local v3, "sub":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda1;-><init>(Landroid/util/Pair;)V

    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    goto :goto_0

    .line 117
    :cond_0
    new-instance v4, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;ILjava/lang/String;)V

    .line 119
    .local v4, "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/4 v6, 0x1

    .line 123
    invoke-virtual {v5, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RAT type listener registered for sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkStats"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v3    # "sub":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    goto :goto_0

    .line 127
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 129
    .local v3, "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    new-instance v4, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    invoke-static {v1, v4}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 131
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    .line 133
    .end local v3    # "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    :cond_2
    goto :goto_1

    .line 134
    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 161
    return-void
.end method

.method public stop()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 170
    .local v1, "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    .line 171
    .end local v1    # "listener":Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method
