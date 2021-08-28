.class Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_EXEMPTION_LIST_CHANGED:I = 0x5

.field private static final MSG_ALL_UNEXEMPTED:I = 0x4

.field private static final MSG_EXEMPTED_BUCKET_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_EXEMPTION_LIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 763
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 764
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 765
    return-void
.end method

.method private handleUidDisabled(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 927
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 928
    .local v3, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-virtual {v3, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    .line 927
    .end local v3    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    :cond_0
    return-void
.end method

.method private removeUid(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 950
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 951
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->access$1600(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 954
    :cond_0
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 806
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 807
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 823
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 830
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    goto :goto_0

    .line 825
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 826
    return-void

    .line 831
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v1, v1, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v1, :cond_0

    .line 832
    monitor-exit v0

    return-void

    .line 834
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 835
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 837
    .local v0, "sender":Lcom/android/server/AppStateTrackerImpl;
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v1

    .line 838
    .local v1, "start":J
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1

    .line 924
    :pswitch_1
    return-void

    .line 918
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidIdle(I)V

    .line 919
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    .line 920
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    .line 922
    :cond_1
    return-void

    .line 912
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidGone(I)V

    .line 913
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    .line 914
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    .line 916
    :cond_2
    return-void

    .line 909
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidActive(I)V

    .line 910
    return-void

    .line 875
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, v3, v4

    .line 876
    .local v6, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$1300(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 875
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 878
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 879
    return-void

    .line 891
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 892
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v6, v6, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    .line 893
    .local v5, "unblockAlarms":Z
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v6, v3

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v7, v3, v4

    .line 895
    .local v7, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-virtual {v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 896
    if-eqz v5, :cond_5

    .line 897
    invoke-virtual {v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 894
    .end local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 900
    :cond_6
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 902
    return-void

    .line 893
    .end local v5    # "unblockAlarms":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 905
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 906
    return-void

    .line 882
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_7

    aget-object v6, v3, v4

    .line 883
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$1400(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 882
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 885
    :cond_7
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 886
    return-void

    .line 868
    :pswitch_9
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_5
    if-ge v4, v5, :cond_8

    aget-object v6, v3, v4

    .line 869
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$1200(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 868
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 871
    :cond_8
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 872
    return-void

    .line 861
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_6
    if-ge v4, v5, :cond_9

    aget-object v6, v3, v4

    .line 862
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$1100(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 861
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 864
    :cond_9
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 865
    return-void

    .line 854
    :pswitch_b
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_7
    if-ge v4, v5, :cond_a

    aget-object v6, v3, v4

    .line 855
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$1000(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 854
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 857
    :cond_a
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 858
    return-void

    .line 847
    :pswitch_c
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_8
    if-ge v4, v5, :cond_b

    aget-object v6, v3, v4

    .line 848
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v0, v7, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$900(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    .line 847
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 850
    :cond_b
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 851
    return-void

    .line 840
    :pswitch_d
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$700(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v6, v3

    :goto_9
    if-ge v4, v6, :cond_c

    aget-object v7, v3, v4

    .line 841
    .restart local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->access$800(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V

    .line 840
    .end local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 843
    :cond_c
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->access$600(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 844
    return-void

    .line 834
    .end local v0    # "sender":Lcom/android/server/AppStateTrackerImpl;
    .end local v1    # "start":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 933
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->access$1500(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 937
    :cond_0
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleUidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 941
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 942
    return-void
.end method

.method public handleUidIdle(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 947
    return-void
.end method

.method public notifyAllExemptionListChanged()V
    .locals 1

    .line 781
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 783
    return-void
.end method

.method public notifyAllUnexempted()V
    .locals 1

    .line 776
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 777
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 778
    return-void
.end method

.method public notifyExemptedBucketChanged()V
    .locals 1

    .line 801
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 803
    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .locals 1

    .line 791
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 792
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 793
    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .locals 1

    .line 796
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 798
    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 772
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 773
    return-void
.end method

.method public notifyTempExemptionListChanged()V
    .locals 1

    .line 786
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 788
    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 769
    return-void
.end method

.method public onUidActive(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 810
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 811
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 814
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 815
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 818
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 819
    return-void
.end method
