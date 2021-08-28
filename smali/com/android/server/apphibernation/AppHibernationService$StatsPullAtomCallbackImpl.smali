.class final Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "AppHibernationService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatsPullAtomCallbackImpl"
.end annotation


# static fields
.field private static final MEGABYTE_IN_BYTES:I = 0xf4240


# instance fields
.field final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method private constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/apphibernation/AppHibernationService;
    .param p2, "x1"    # Lcom/android/server/apphibernation/AppHibernationService$1;

    .line 948
    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 9
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 954
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x277b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x277d

    if-ne p1, v0, :cond_1

    .line 957
    :cond_0
    return v1

    .line 960
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 995
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 977
    :pswitch_1
    const/4 v0, 0x0

    .line 978
    .local v0, "hibernatedAppCount":I
    const-wide/16 v2, 0x0

    .line 979
    .local v2, "storage_saved_byte":J
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v4}, Lcom/android/server/apphibernation/AppHibernationService;->access$600(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 980
    :try_start_0
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v5}, Lcom/android/server/apphibernation/AppHibernationService;->access$700(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 981
    .local v6, "state":Lcom/android/server/apphibernation/GlobalLevelState;
    iget-boolean v7, v6, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v7, :cond_2

    .line 982
    add-int/lit8 v0, v0, 0x1

    .line 983
    iget-wide v7, v6, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    add-long/2addr v2, v7

    .line 985
    .end local v6    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    :cond_2
    goto :goto_0

    .line 986
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    .line 988
    invoke-static {p1, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object v4

    .line 987
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    goto :goto_2

    .line 986
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 962
    .end local v0    # "hibernatedAppCount":I
    .end local v2    # "storage_saved_byte":J
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0}, Lcom/android/server/apphibernation/AppHibernationService;->access$500(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 963
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 964
    .local v2, "numUsers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 965
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 966
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v5}, Lcom/android/server/apphibernation/AppHibernationService;->access$500(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 967
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 970
    invoke-virtual {v5, v4}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 968
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v5

    .line 967
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    .end local v4    # "userId":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 975
    .end local v3    # "i":I
    :cond_5
    nop

    .line 997
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "numUsers":I
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x277b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
