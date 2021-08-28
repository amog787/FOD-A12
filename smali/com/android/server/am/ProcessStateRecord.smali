.class final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# static fields
.field private static final VALUE_FALSE:I = 0x0

.field private static final VALUE_INVALID:I = -0x1

.field private static final VALUE_TRUE:I = 0x1


# instance fields
.field private mAdjSeq:I

.field private mAdjSource:Ljava/lang/Object;

.field private mAdjSourceProcState:I

.field private mAdjTarget:Ljava/lang/Object;

.field private mAdjType:Ljava/lang/String;

.field private mAdjTypeCode:I

.field private mAllowStartFgsState:I

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mCacheOomRankerUseCount:I

.field private mCached:Z

.field private mCachedAdj:I

.field private mCachedForegroundActivities:Z

.field private mCachedHasActivities:I

.field private mCachedHasRecentTasks:I

.field private mCachedHasVisibleActivities:I

.field private mCachedIsHeavyWeight:I

.field private mCachedIsHomeProcess:I

.field private mCachedIsPreviousProcess:I

.field private mCachedIsReceivingBroadcast:I

.field private mCachedProcState:I

.field private mCachedSchedGroup:I

.field private mCompletedAdjSeq:I

.field private mContainsCycle:Z

.field private mCurAdj:I

.field private mCurCapability:I

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mEmpty:Z

.field private mFgInteractionTime:J

.field private mForcingToImportant:Ljava/lang/Object;

.field private mHasForegroundActivities:Z

.field private mHasOverlayUi:Z

.field private mHasShownUi:Z

.field private mHasStartedServices:Z

.field private mHasTopUi:Z

.field private mInteractionEventTime:J

.field private mLastInvisibleTime:J

.field private mLastStateTime:J

.field private mLastTopTime:J

.field private mMaxAdj:I

.field private mNotCachedSinceIdle:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStateChanged:Z

.field private mReachable:Z

.field private mRepForegroundActivities:Z

.field private mRepProcState:I

.field private mReportedInteraction:Z

.field private mRunningRemoteAnimation:Z

.field private mSavedPriority:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mServiceB:Z

.field private mServiceHighRam:Z

.field private mSetAdj:I

.field private mSetCapability:I

.field private mSetProcState:I

.field private mSetRawAdj:I

.field private mSetSchedGroup:I

.field private mSystemNoUi:Z

.field private mVerifiedAdj:I

.field private mWhenUnimportant:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 57
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 63
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 69
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 75
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 81
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 94
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 100
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 106
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 112
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 118
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 124
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 130
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 301
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    .line 365
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 367
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 369
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 371
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 373
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 375
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 377
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 380
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 382
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 384
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 386
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 390
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 391
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 392
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 393
    return-void
.end method


# virtual methods
.method bumpAllowStartFgsState(I)V
    .locals 1
    .param p1, "newProcState"    # I

    .line 1100
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    if-ge p1, v0, :cond_0

    .line 1101
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    .line 1103
    :cond_0
    return-void
.end method

.method computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .locals 12
    .param p1, "callback"    # Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    .param p2, "adj"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "hasVisibleActivities"    # Z
    .param p5, "procState"    # I
    .param p6, "schedGroup"    # I
    .param p7, "appUid"    # I
    .param p8, "logUid"    # I
    .param p9, "processCurTop"    # I

    .line 1015
    move-object v0, p0

    move-object v11, p1

    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 1016
    return-void

    .line 1018
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    .line 1020
    const/16 v1, 0x63

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1021
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v2

    .line 1020
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1023
    .local v1, "minLayer":I
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1024
    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1025
    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1026
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1027
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1029
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 1030
    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1032
    :cond_1
    return-void
.end method

.method containsCycle()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return v0
.end method

.method decAdjSeq()V
    .locals 1

    .line 766
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 767
    return-void
.end method

.method decCompletedAdjSeq()V
    .locals 1

    .line 781
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 782
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 1132
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 1133
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1135
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1136
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1139
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 1140
    const-string v0, " fgInteractionTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1143
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1145
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1146
    const-string v0, " lruSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1148
    const-string v0, " curRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1149
    const-string v0, " setRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1150
    const-string v0, " cur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1151
    const-string v0, " set="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1153
    const-string v0, " setSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1154
    const-string v0, " systemNoUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1156
    const-string v0, " mRepProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v0, " setProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1158
    const-string v0, " lastStateTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1163
    const-string v0, " setCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1165
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowStartFgsState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1168
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1169
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1170
    const-string v0, " pendingUiClean="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1172
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1173
    const-string v0, " empty="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1174
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_6

    .line 1175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1176
    const-string v0, " serviceHighRam="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1178
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_7

    .line 1179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1180
    const-string v0, " initialIdlePss="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1182
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_9

    .line 1183
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1184
    const-string v0, " hasOverlayUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1185
    const-string v0, " runningRemoteAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1187
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_b

    .line 1188
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    const-string v0, "foregroundActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1190
    const-string v0, " (rep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    :cond_b
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_c

    .line 1193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v0, "whenUnimportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1198
    :cond_c
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_d

    .line 1199
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1200
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1201
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1203
    :cond_d
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_e

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_e

    .line 1204
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastInvisibleTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1206
    .local v0, "elapsedRealtimeNow":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1207
    .local v2, "currentTimeNow":J
    sub-long v4, v2, v0

    iget-wide v6, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr v4, v6

    .line 1209
    .local v4, "lastInvisibleCurrentTime":J
    invoke-static {p1, v4, v5, v2, v3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1212
    .end local v0    # "elapsedRealtimeNow":J
    .end local v2    # "currentTimeNow":J
    .end local v4    # "lastInvisibleCurrentTime":J
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v0, :cond_f

    .line 1213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1215
    :cond_f
    return-void
.end method

.method forceProcessStateUpTo(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 552
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 554
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 557
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 565
    :cond_0
    :goto_0
    return-void
.end method

.method getAdjSeq()I
    .locals 1

    .line 771
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return v0
.end method

.method getAdjSource()Ljava/lang/Object;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjSourceProcState()I
    .locals 1

    .line 897
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return v0
.end method

.method getAdjTarget()Ljava/lang/Object;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjType()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object v0
.end method

.method getAdjTypeCode()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return v0
.end method

.method getAllowStartFgsState()I
    .locals 1

    .line 1107
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    return v0
.end method

.method getCacheOomRankerUseCount()I
    .locals 1

    .line 847
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return v0
.end method

.method getCachedAdj()I
    .locals 1

    .line 1036
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return v0
.end method

.method getCachedForegroundActivities()Z
    .locals 1

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return v0
.end method

.method getCachedHasActivities()Z
    .locals 4

    .line 937
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 939
    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 941
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasRecentTasks()Z
    .locals 4

    .line 990
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 994
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasVisibleActivities()Z
    .locals 4

    .line 955
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 956
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 959
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHeavyWeight()Z
    .locals 4

    .line 946
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 950
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHomeProcess()Z
    .locals 4

    .line 964
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 967
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_0

    .line 969
    :cond_0
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 972
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsPreviousProcess()Z
    .locals 4

    .line 977
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 980
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_0

    .line 982
    :cond_0
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 985
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 999
    .local p1, "tmpQueue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastQueue;>;"
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 1000
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 1003
    if-ne v0, v2, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1008
    :cond_2
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method getCachedProcState()I
    .locals 1

    .line 1046
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return v0
.end method

.method getCachedSchedGroup()I
    .locals 1

    .line 1051
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return v0
.end method

.method getCompletedAdjSeq()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return v0
.end method

.method getCurAdj()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return v0
.end method

.method getCurCapability()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .locals 1

    .line 530
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .locals 2

    .line 746
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForcingToImportant()Ljava/lang/Object;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object v0
.end method

.method getInteractionEventTime()J
    .locals 2

    .line 735
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastInvisibleTime()J
    .locals 2

    .line 1127
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method getLastStateTime()J
    .locals 2

    .line 584
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastTopTime()J
    .locals 2

    .line 817
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method getMaxAdj()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return v0
.end method

.method getSavedPriority()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return v0
.end method

.method getSetAdj()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return v0
.end method

.method getSetAdjWithServices()I
    .locals 2

    .line 453
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    .line 454
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v1, :cond_0

    .line 455
    const/16 v0, 0x320

    return v0

    .line 458
    :cond_0
    return v0
.end method

.method getSetCapability()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return v0
.end method

.method getSetRawAdj()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return v0
.end method

.method getSetSchedGroup()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return v0
.end method

.method getVerifiedAdj()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return v0
.end method

.method getWhenUnimportant()J
    .locals 2

    .line 807
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    .line 644
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasOverlayUi()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasProcStateChanged()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return v0
.end method

.method hasRepForegroundActivities()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return v0
.end method

.method hasReportedInteraction()Z
    .locals 1

    .line 724
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return v0
.end method

.method hasShownUi()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return v0
.end method

.method hasStartedServices()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return v0
.end method

.method hasTopUi()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return v0
.end method

.method init(J)V
    .locals 0
    .param p1, "now"    # J

    .line 396
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 397
    return-void
.end method

.method isAllowedStartFgsState()Z
    .locals 2

    .line 1112
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCached()Z
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 827
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return v0
.end method

.method isNotCachedSinceIdle()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return v0
.end method

.method isReachable()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return v0
.end method

.method isRunningRemoteAnimation()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return v0
.end method

.method isServiceB()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return v0
.end method

.method isServiceHighRam()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return v0
.end method

.method isSystemNoUi()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return v0
.end method

.method public synthetic lambda$forceProcessStateUpTo$1$ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 558
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 560
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 558
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$setReportedProcState$0$ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 537
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 539
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 537
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    .line 1056
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1058
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    .line 1060
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1061
    :cond_2
    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1064
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :goto_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    .line 1068
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1071
    :cond_4
    if-eqz v1, :cond_5

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1074
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method onCleanupApplicationRecordLSP()V
    .locals 2

    .line 1083
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1084
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 1085
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 1086
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1087
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1088
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 1089
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1091
    return-void
.end method

.method resetAllowStartFgsState()V
    .locals 1

    .line 1095
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    .line 1096
    return-void
.end method

.method resetCachedInfo()V
    .locals 2

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 923
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 924
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 925
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 926
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 927
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 928
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 929
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 931
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 932
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 933
    return-void
.end method

.method setAdjSeq(I)V
    .locals 0
    .param p1, "adjSeq"    # I

    .line 761
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 762
    return-void
.end method

.method setAdjSource(Ljava/lang/Object;)V
    .locals 0
    .param p1, "adjSource"    # Ljava/lang/Object;

    .line 882
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 883
    return-void
.end method

.method setAdjSourceProcState(I)V
    .locals 0
    .param p1, "adjSourceProcState"    # I

    .line 892
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 893
    return-void
.end method

.method setAdjTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "adjTarget"    # Ljava/lang/Object;

    .line 902
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 903
    return-void
.end method

.method setAdjType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adjType"    # Ljava/lang/String;

    .line 862
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 863
    return-void
.end method

.method setAdjTypeCode(I)V
    .locals 0
    .param p1, "adjTypeCode"    # I

    .line 872
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 873
    return-void
.end method

.method setCached(Z)V
    .locals 1
    .param p1, "cached"    # Z

    .line 832
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    if-eq v0, p1, :cond_0

    .line 833
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    .line 834
    if-eqz p1, :cond_0

    .line 835
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 838
    :cond_0
    return-void
.end method

.method setCompletedAdjSeq(I)V
    .locals 0
    .param p1, "completedAdjSeq"    # I

    .line 776
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 777
    return-void
.end method

.method setContainsCycle(Z)V
    .locals 0
    .param p1, "containsCycle"    # Z

    .line 791
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 792
    return-void
.end method

.method setCurAdj(I)V
    .locals 0
    .param p1, "curAdj"    # I

    .line 433
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 434
    return-void
.end method

.method setCurCapability(I)V
    .locals 0
    .param p1, "curCapability"    # I

    .line 473
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 474
    return-void
.end method

.method setCurProcState(I)V
    .locals 2
    .param p1, "curProcState"    # I

    .line 514
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 515
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 516
    return-void
.end method

.method setCurRawAdj(I)V
    .locals 2
    .param p1, "curRawAdj"    # I

    .line 411
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 414
    return-void
.end method

.method setCurRawProcState(I)V
    .locals 0
    .param p1, "curRawProcState"    # I

    .line 525
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 526
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .locals 1
    .param p1, "curSchedGroup"    # I

    .line 493
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 494
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 495
    return-void
.end method

.method setEmpty(Z)V
    .locals 0
    .param p1, "empty"    # Z

    .line 822
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    .line 823
    return-void
.end method

.method setFgInteractionTime(J)V
    .locals 1
    .param p1, "fgInteractionTime"    # J

    .line 740
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 741
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 742
    return-void
.end method

.method setForcingToImportant(Ljava/lang/Object;)V
    .locals 0
    .param p1, "forcingToImportant"    # Ljava/lang/Object;

    .line 751
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 752
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .locals 0
    .param p1, "hasForegroundActivities"    # Z

    .line 639
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 640
    return-void
.end method

.method setHasOverlayUi(Z)V
    .locals 1
    .param p1, "hasOverlayUi"    # Z

    .line 680
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 681
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 682
    return-void
.end method

.method setHasShownUi(Z)V
    .locals 0
    .param p1, "hasShownUi"    # Z

    .line 659
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 660
    return-void
.end method

.method setHasStartedServices(Z)V
    .locals 0
    .param p1, "hasStartedServices"    # Z

    .line 629
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 630
    return-void
.end method

.method setHasTopUi(Z)V
    .locals 1
    .param p1, "hasTopUi"    # Z

    .line 669
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 670
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 671
    return-void
.end method

.method setInteractionEventTime(J)V
    .locals 1
    .param p1, "interactionEventTime"    # J

    .line 729
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 730
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 731
    return-void
.end method

.method setLastStateTime(J)V
    .locals 0
    .param p1, "lastStateTime"    # J

    .line 579
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 580
    return-void
.end method

.method setLastTopTime(J)V
    .locals 0
    .param p1, "lastTopTime"    # J

    .line 812
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 813
    return-void
.end method

.method setMaxAdj(I)V
    .locals 0
    .param p1, "maxAdj"    # I

    .line 401
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 402
    return-void
.end method

.method setNotCachedSinceIdle(Z)V
    .locals 0
    .param p1, "notCachedSinceIdle"    # Z

    .line 619
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 620
    return-void
.end method

.method setProcStateChanged(Z)V
    .locals 0
    .param p1, "procStateChanged"    # Z

    .line 709
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 710
    return-void
.end method

.method setReachable(Z)V
    .locals 0
    .param p1, "reachable"    # Z

    .line 917
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 918
    return-void
.end method

.method setRepForegroundActivities(Z)V
    .locals 0
    .param p1, "repForegroundActivities"    # Z

    .line 649
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 650
    return-void
.end method

.method setReportedInteraction(Z)V
    .locals 0
    .param p1, "reportedInteraction"    # Z

    .line 719
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 720
    return-void
.end method

.method setReportedProcState(I)V
    .locals 2
    .param p1, "repProcState"    # I

    .line 535
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 536
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 543
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .locals 3
    .param p1, "runningRemoteAnimation"    # Z

    .line 696
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 704
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_uiVisibility"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 705
    return-void
.end method

.method setSavedPriority(I)V
    .locals 0
    .param p1, "savedPriority"    # I

    .line 589
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 590
    return-void
.end method

.method setServiceB(Z)V
    .locals 0
    .param p1, "serviceb"    # Z

    .line 599
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 600
    return-void
.end method

.method setServiceHighRam(Z)V
    .locals 0
    .param p1, "serviceHighRam"    # Z

    .line 609
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 610
    return-void
.end method

.method setSetAdj(I)V
    .locals 0
    .param p1, "setAdj"    # I

    .line 443
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 444
    return-void
.end method

.method setSetCapability(I)V
    .locals 0
    .param p1, "setCapability"    # I

    .line 483
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 484
    return-void
.end method

.method setSetProcState(I)V
    .locals 0
    .param p1, "setProcState"    # I

    .line 569
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 570
    return-void
.end method

.method setSetRawAdj(I)V
    .locals 0
    .param p1, "setRawAdj"    # I

    .line 423
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 424
    return-void
.end method

.method setSetSchedGroup(I)V
    .locals 0
    .param p1, "setSchedGroup"    # I

    .line 504
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 505
    return-void
.end method

.method setSystemNoUi(Z)V
    .locals 0
    .param p1, "systemNoUi"    # Z

    .line 852
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 853
    return-void
.end method

.method setVerifiedAdj(I)V
    .locals 0
    .param p1, "verifiedAdj"    # I

    .line 463
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 464
    return-void
.end method

.method setWhenUnimportant(J)V
    .locals 1
    .param p1, "whenUnimportant"    # J

    .line 801
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 802
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 803
    return-void
.end method

.method updateLastInvisibleTime(Z)V
    .locals 4
    .param p1, "hasVisibleActivities"    # Z

    .line 1117
    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_0

    .line 1118
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_0

    .line 1119
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 1122
    :cond_1
    :goto_0
    return-void
.end method
