.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1037
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1038
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .param p1, "msg"    # Landroid/os/Message;

    .line 1042
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    goto/16 :goto_f

    .line 1274
    :pswitch_0
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1275
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2600(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 1276
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    move-object v2, v1

    goto/16 :goto_f

    .line 1044
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1053
    .local v5, "start":J
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 1054
    .local v15, "lastOomAdj":I
    iget v13, v2, Landroid/os/Message;->arg2:I

    .line 1055
    .local v13, "procState":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1056
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1800(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    .line 1057
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move-object v11, v0

    .line 1059
    .local v11, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v0

    move v12, v0

    .line 1060
    .local v12, "pendingAction":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v10, v0

    .line 1061
    .local v10, "pid":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v9, v0

    .line 1062
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1066
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v12, v0, :cond_0

    if-ne v12, v3, :cond_1

    :cond_0
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1068
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    const/16 v8, 0xc8

    if-gt v4, v8, :cond_1

    .line 1074
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1080
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v12    # "pendingAction":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    move-object v2, v1

    move/from16 v56, v13

    move/from16 v60, v15

    goto/16 :goto_e

    .line 1077
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v12    # "pendingAction":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v4

    .line 1078
    .local v4, "lastCompactAction":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v17

    move-wide/from16 v38, v17

    .line 1079
    .local v38, "lastCompactTime":J
    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 1080
    .local v3, "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1082
    if-nez v10, :cond_2

    .line 1084
    return-void

    .line 1094
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v17, v38, v7

    if-eqz v17, :cond_b

    .line 1095
    if-ne v12, v0, :cond_6

    .line 1096
    if-ne v4, v0, :cond_3

    sub-long v20, v5, v38

    iget-object v7, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v22, v9

    .end local v9    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    iget-wide v8, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v7, v20, v8

    if-ltz v7, :cond_4

    goto :goto_0

    .end local v22    # "name":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v22, v9

    .end local v9    # "name":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    sub-long v7, v5, v38

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_5

    .line 1107
    :cond_4
    return-void

    .line 1096
    :cond_5
    move-object/from16 v9, p0

    goto :goto_2

    .line 1109
    .end local v22    # "name":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v22, v9

    .end local v9    # "name":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v12, v0, :cond_9

    .line 1110
    const/4 v0, 0x1

    if-ne v4, v0, :cond_7

    sub-long v0, v5, v38

    move-object/from16 v9, p0

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v0, v0, v7

    if-ltz v0, :cond_8

    goto :goto_1

    :cond_7
    move-object/from16 v9, p0

    :goto_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_c

    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_c

    .line 1121
    :cond_8
    return-void

    .line 1123
    :cond_9
    move-object/from16 v9, p0

    const/4 v0, 0x3

    if-ne v12, v0, :cond_a

    .line 1124
    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_c

    .line 1130
    return-void

    .line 1132
    :cond_a
    const/4 v0, 0x4

    if-ne v12, v0, :cond_c

    .line 1133
    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_c

    .line 1139
    return-void

    .line 1094
    .end local v22    # "name":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v22, v9

    move-object v9, v1

    .line 1144
    .end local v9    # "name":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    :cond_c
    :goto_2
    packed-switch v12, :pswitch_data_1

    .line 1155
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v8, v0

    .local v0, "action":Ljava/lang/String;
    goto :goto_3

    .line 1152
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_2
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 1153
    .restart local v0    # "action":Ljava/lang/String;
    move-object v8, v0

    const/4 v1, 0x0

    goto :goto_3

    .line 1146
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_3
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 1147
    .restart local v0    # "action":Ljava/lang/String;
    move-object v8, v0

    const/4 v1, 0x0

    .line 1159
    .end local v0    # "action":Ljava/lang/String;
    .local v8, "action":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1160
    return-void

    .line 1163
    :cond_d
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1168
    return-void

    .line 1171
    :cond_e
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v1

    .line 1172
    .local v1, "rssBefore":[J
    const/4 v0, 0x2

    aget-wide v40, v1, v0

    .line 1174
    .local v40, "anonRssBefore":J
    const/4 v7, 0x0

    aget-wide v24, v1, v7

    const-wide/16 v18, 0x0

    cmp-long v7, v24, v18

    if-nez v7, :cond_f

    const/4 v7, 0x1

    aget-wide v24, v1, v7

    cmp-long v7, v24, v18

    if-nez v7, :cond_f

    aget-wide v24, v1, v0

    cmp-long v0, v24, v18

    if-nez v0, :cond_f

    const/4 v0, 0x3

    aget-wide v24, v1, v0

    cmp-long v0, v24, v18

    if-nez v0, :cond_f

    .line 1180
    return-void

    .line 1183
    :cond_f
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1184
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    move-object/from16 v42, v3

    move/from16 v21, v13

    move-object/from16 v24, v14

    goto :goto_5

    .line 1185
    :cond_11
    :goto_4
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move/from16 v21, v13

    move-object/from16 v24, v14

    .end local v13    # "procState":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v21, "procState":I
    .local v24, "proc":Lcom/android/server/am/ProcessRecord;
    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v0, v13, v18

    if-lez v0, :cond_12

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v0, v40, v13

    if-gez v0, :cond_12

    .line 1192
    return-void

    .line 1195
    :cond_12
    if-eqz v3, :cond_13

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v0, v13, v18

    if-lez v0, :cond_13

    .line 1196
    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v0

    .line 1197
    .local v0, "lastRss":[J
    const/4 v7, 0x1

    aget-wide v13, v1, v7

    aget-wide v18, v0, v7

    sub-long v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const/4 v7, 0x2

    aget-wide v18, v1, v7

    aget-wide v25, v0, v7

    sub-long v18, v18, v25

    .line 1198
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v13, v13, v18

    const/4 v7, 0x3

    aget-wide v18, v1, v7

    aget-wide v25, v0, v7

    sub-long v18, v18, v25

    .line 1199
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v13, v13, v18

    .line 1200
    .local v13, "absDelta":J
    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v42, v3

    .end local v3    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .local v42, "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    iget-wide v2, v7, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v2, v13, v2

    if-gtz v2, :cond_14

    .line 1206
    return-void

    .line 1195
    .end local v0    # "lastRss":[J
    .end local v13    # "absDelta":J
    .end local v42    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .restart local v3    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    :cond_13
    move-object/from16 v42, v3

    .line 1213
    .end local v3    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .restart local v42    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    :cond_14
    :goto_5
    packed-switch v12, :pswitch_data_2

    goto :goto_6

    .line 1224
    :pswitch_4
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2408(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1225
    goto :goto_6

    .line 1221
    :pswitch_5
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2308(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1222
    goto :goto_6

    .line 1218
    :pswitch_6
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2208(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1219
    goto :goto_6

    .line 1215
    :pswitch_7
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2108(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1216
    nop

    .line 1230
    :goto_6
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    :try_start_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compact "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 1231
    const/4 v2, 0x1

    if-ne v12, v2, :cond_15

    :try_start_5
    const-string/jumbo v2, "some"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 1269
    :catchall_1
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_b

    .line 1266
    :catch_0
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_c

    .line 1231
    :cond_15
    :try_start_6
    const-string v2, "full"

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    move-object/from16 v2, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 1230
    const-wide/16 v13, 0x40

    :try_start_8
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 1233
    :try_start_9
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v13

    move-wide/from16 v43, v13

    .line 1234
    .local v43, "zramFreeKbBefore":J
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v8, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 1235
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    move-object v3, v0

    .line 1236
    .local v3, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1237
    .local v13, "end":J
    sub-long v45, v13, v5

    .line 1238
    .local v45, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v18

    move-wide/from16 v47, v18

    .line 1239
    .local v47, "zramFreeKbAfter":J
    const/16 v0, 0x756f

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v7, v16

    const/16 v18, 0x1

    aput-object v2, v7, v18

    const/16 v18, 0x2

    aput-object v8, v7, v18

    aget-wide v18, v1, v16

    .line 1240
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v7, v19

    const/16 v18, 0x1

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v17, 0x4

    aput-object v18, v7, v17

    const/16 v17, 0x5

    const/16 v18, 0x2

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x6

    const/16 v18, 0x3

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x7

    const/16 v16, 0x0

    aget-wide v18, v3, v16

    aget-wide v25, v1, v16

    sub-long v18, v18, v25

    .line 1241
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x8

    const/16 v18, 0x1

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x9

    const/16 v18, 0x2

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    .line 1242
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xa

    const/16 v18, 0x3

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xb

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xc

    .line 1243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xd

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xf

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x10

    .line 1244
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x11

    sub-long v18, v47, v43

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    .line 1239
    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1248
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2500(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    cmpg-float v0, v0, v7

    if-gez v0, :cond_16

    .line 1249
    const/16 v7, 0x73

    const/4 v0, 0x0

    :try_start_a
    aget-wide v17, v1, v0

    const/4 v0, 0x1

    aget-wide v25, v1, v0

    const/4 v0, 0x2

    aget-wide v27, v1, v0

    const/4 v0, 0x3

    aget-wide v29, v1, v0

    const/4 v0, 0x0

    aget-wide v31, v3, v0

    const/4 v0, 0x1

    aget-wide v33, v3, v0

    const/4 v0, 0x2

    aget-wide v35, v3, v0

    const/4 v0, 0x3

    aget-wide v49, v3, v0

    .line 1253
    invoke-static/range {v21 .. v21}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v37
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1249
    move-object/from16 v51, v8

    .end local v8    # "action":Ljava/lang/String;
    .local v51, "action":Ljava/lang/String;
    move v8, v10

    move-object/from16 v52, v2

    move-object v2, v9

    .end local v2    # "name":Ljava/lang/String;
    .local v52, "name":Ljava/lang/String;
    move-object/from16 v9, v52

    move/from16 v53, v10

    .end local v10    # "pid":I
    .local v53, "pid":I
    move v10, v12

    move-object/from16 v54, v11

    move/from16 v55, v12

    .end local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v12    # "pendingAction":I
    .local v54, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v55, "pendingAction":I
    move-wide/from16 v11, v17

    move-wide/from16 v58, v13

    move/from16 v56, v21

    move-object/from16 v57, v24

    .end local v13    # "end":J
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v56, "procState":I
    .local v57, "proc":Lcom/android/server/am/ProcessRecord;
    .local v58, "end":J
    move-wide/from16 v13, v25

    move/from16 v60, v15

    .end local v15    # "lastOomAdj":I
    .local v60, "lastOomAdj":I
    move-wide/from16 v15, v27

    move-wide/from16 v17, v29

    move-wide/from16 v19, v31

    move-wide/from16 v21, v33

    move-wide/from16 v23, v35

    move-wide/from16 v25, v49

    move-wide/from16 v27, v45

    move/from16 v29, v4

    move-wide/from16 v30, v38

    move/from16 v32, v60

    move/from16 v33, v37

    move-wide/from16 v34, v43

    move-wide/from16 v36, v47

    :try_start_b
    invoke-static/range {v7 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_8

    .line 1269
    .end local v3    # "rssAfter":[J
    .end local v43    # "zramFreeKbBefore":J
    .end local v45    # "time":J
    .end local v47    # "zramFreeKbAfter":J
    .end local v58    # "end":J
    :catchall_2
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    goto/16 :goto_b

    .line 1266
    :catch_1
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    .line 1269
    .end local v51    # "action":Ljava/lang/String;
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v12    # "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v12    # "pendingAction":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    goto/16 :goto_b

    .line 1266
    .end local v51    # "action":Ljava/lang/String;
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v12    # "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_2
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v12    # "pendingAction":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    goto/16 :goto_c

    .line 1248
    .end local v51    # "action":Ljava/lang/String;
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "rssAfter":[J
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v12    # "pendingAction":I
    .restart local v13    # "end":J
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v43    # "zramFreeKbBefore":J
    .restart local v45    # "time":J
    .restart local v47    # "zramFreeKbAfter":J
    :cond_16
    move-object/from16 v52, v2

    move-object/from16 v51, v8

    move-object v2, v9

    move/from16 v53, v10

    move-object/from16 v54, v11

    move/from16 v55, v12

    move-wide/from16 v58, v13

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    const/4 v0, 0x3

    .line 1256
    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v12    # "pendingAction":I
    .end local v13    # "end":J
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v58    # "end":J
    .restart local v60    # "lastOomAdj":I
    :goto_8
    :try_start_c
    iget-object v7, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v7

    monitor-enter v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1257
    move-object/from16 v8, v54

    move-wide/from16 v9, v58

    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v58    # "end":J
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v9, "end":J
    :try_start_e
    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1258
    move/from16 v11, v55

    .end local v55    # "pendingAction":I
    .local v11, "pendingAction":I
    :try_start_f
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactAction(I)V

    .line 1259
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1260
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v12, v51

    .end local v51    # "action":Ljava/lang/String;
    .local v12, "action":Ljava/lang/String;
    :try_start_11
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1261
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1263
    :cond_17
    iget-object v0, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v0, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    invoke-direct {v13, v3}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v7, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1269
    .end local v3    # "rssAfter":[J
    .end local v9    # "end":J
    .end local v43    # "zramFreeKbBefore":J
    .end local v45    # "time":J
    .end local v47    # "zramFreeKbAfter":J
    :cond_18
    const-wide/16 v9, 0x40

    goto/16 :goto_d

    .end local v12    # "action":Ljava/lang/String;
    .restart local v51    # "action":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v12, v51

    .end local v51    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_b

    .line 1266
    .end local v12    # "action":Ljava/lang/String;
    .restart local v51    # "action":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v12, v51

    const-wide/16 v9, 0x40

    .end local v51    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_c

    .line 1259
    .end local v12    # "action":Ljava/lang/String;
    .restart local v3    # "rssAfter":[J
    .restart local v9    # "end":J
    .restart local v43    # "zramFreeKbBefore":J
    .restart local v45    # "time":J
    .restart local v47    # "zramFreeKbAfter":J
    .restart local v51    # "action":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v12, v51

    .end local v51    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_9

    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v55    # "pendingAction":I
    :catchall_6
    move-exception v0

    move-object/from16 v12, v51

    move/from16 v11, v55

    .end local v51    # "action":Ljava/lang/String;
    .end local v55    # "pendingAction":I
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_9

    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v9    # "end":J
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    .restart local v58    # "end":J
    :catchall_7
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    move-wide/from16 v9, v58

    .end local v51    # "action":Ljava/lang/String;
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .end local v58    # "end":J
    .restart local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v9    # "end":J
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    :goto_9
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v1    # "rssBefore":[J
    .end local v4    # "lastCompactAction":I
    .end local v5    # "start":J
    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v38    # "lastCompactTime":J
    .end local v40    # "anonRssBefore":J
    .end local v42    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1269
    .end local v3    # "rssAfter":[J
    .end local v9    # "end":J
    .end local v43    # "zramFreeKbBefore":J
    .end local v45    # "time":J
    .end local v47    # "zramFreeKbAfter":J
    .restart local v1    # "rssBefore":[J
    .restart local v4    # "lastCompactAction":I
    .restart local v5    # "start":J
    .restart local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v38    # "lastCompactTime":J
    .restart local v40    # "anonRssBefore":J
    .restart local v42    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_8
    move-exception v0

    goto/16 :goto_b

    .line 1266
    :catch_4
    move-exception v0

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    .line 1259
    .restart local v3    # "rssAfter":[J
    .restart local v9    # "end":J
    .restart local v43    # "zramFreeKbBefore":J
    .restart local v45    # "time":J
    .restart local v47    # "zramFreeKbAfter":J
    :catchall_9
    move-exception v0

    goto :goto_9

    .line 1269
    .end local v3    # "rssAfter":[J
    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v9    # "end":J
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v43    # "zramFreeKbBefore":J
    .end local v45    # "time":J
    .end local v47    # "zramFreeKbAfter":J
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    :catchall_a
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    .end local v51    # "action":Ljava/lang/String;
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .restart local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_b

    .line 1266
    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v51    # "action":Ljava/lang/String;
    .restart local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v55    # "pendingAction":I
    :catch_5
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    const-wide/16 v9, 0x40

    .end local v51    # "action":Ljava/lang/String;
    .end local v54    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v55    # "pendingAction":I
    .restart local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_c

    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .restart local v2    # "name":Ljava/lang/String;
    .local v8, "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .local v11, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v12, "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_6
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    move-wide v9, v13

    goto :goto_a

    .line 1269
    :catchall_b
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    .end local v2    # "name":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    goto :goto_b

    .line 1266
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .restart local v2    # "name":Ljava/lang/String;
    .local v8, "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .local v11, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v12, "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_7
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    const-wide/16 v9, 0x40

    .end local v2    # "name":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    :goto_a
    goto :goto_c

    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .local v8, "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .local v11, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v12, "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_8
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    const-wide/16 v9, 0x40

    goto :goto_c

    .line 1269
    :catchall_c
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    .end local v10    # "pid":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    :goto_b
    const-wide/16 v9, 0x40

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1270
    throw v0

    .line 1266
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .local v8, "action":Ljava/lang/String;
    .restart local v10    # "pid":I
    .local v11, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v12, "pendingAction":I
    .restart local v15    # "lastOomAdj":I
    .restart local v21    # "procState":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_9
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    .line 1269
    .end local v10    # "pid":I
    .end local v15    # "lastOomAdj":I
    .end local v21    # "procState":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v24    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v52    # "name":Ljava/lang/String;
    .restart local v53    # "pid":I
    .restart local v56    # "procState":I
    .restart local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "lastOomAdj":I
    :goto_c
    nop

    :goto_d
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1270
    nop

    .line 1271
    goto :goto_f

    .line 1080
    .end local v1    # "rssBefore":[J
    .end local v4    # "lastCompactAction":I
    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v38    # "lastCompactTime":J
    .end local v40    # "anonRssBefore":J
    .end local v42    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v52    # "name":Ljava/lang/String;
    .end local v53    # "pid":I
    .end local v56    # "procState":I
    .end local v57    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "lastOomAdj":I
    .local v13, "procState":I
    .restart local v15    # "lastOomAdj":I
    :catchall_d
    move-exception v0

    move-object v2, v1

    move/from16 v56, v13

    move/from16 v60, v15

    .end local v13    # "procState":I
    .end local v15    # "lastOomAdj":I
    .restart local v56    # "procState":I
    .restart local v60    # "lastOomAdj":I
    :goto_e
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_e

    .line 1280
    .end local v5    # "start":J
    .end local v56    # "procState":I
    .end local v60    # "lastOomAdj":I
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
