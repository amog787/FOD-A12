.class final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mFreezeExempt:Z

.field private mFreezeUnfreezeTime:J

.field mFreezerOverride:Z

.field private mFrozen:Z

.field private mLastCompactAction:I

.field private mLastCompactTime:J

.field private mPendingCompact:Z

.field private mPendingFreeze:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mReqCompactAction:I

.field private mShouldNotFreeze:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 197
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 198
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 207
    const-string v0, " lastCompactAction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 209
    const-string v0, " isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 210
    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 211
    return-void
.end method

.method getFreezeUnfreezeTime()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method getLastCompactAction()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return v0
.end method

.method getLastCompactTime()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method getReqCompactAction()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return v0
.end method

.method hasFreezerOverride()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return v0
.end method

.method hasPendingCompact()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return v0
.end method

.method init(J)V
    .locals 0
    .param p1, "nowUptime"    # J

    .line 201
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 202
    return-void
.end method

.method isFreezeExempt()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return v0
.end method

.method isFrozen()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return v0
.end method

.method isPendingFreeze()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return v0
.end method

.method setFreezeExempt(Z)V
    .locals 0
    .param p1, "exempt"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 193
    return-void
.end method

.method setFreezeUnfreezeTime(J)V
    .locals 0
    .param p1, "freezeUnfreezeTime"    # J

    .line 162
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 163
    return-void
.end method

.method setFreezerOverride(Z)V
    .locals 0
    .param p1, "freezerOverride"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 153
    return-void
.end method

.method setFrozen(Z)V
    .locals 0
    .param p1, "frozen"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 143
    return-void
.end method

.method setHasPendingCompact(Z)V
    .locals 0
    .param p1, "pendingCompact"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 133
    return-void
.end method

.method setLastCompactAction(I)V
    .locals 0
    .param p1, "lastCompactAction"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    .line 123
    return-void
.end method

.method setLastCompactTime(J)V
    .locals 0
    .param p1, "lastCompactTime"    # J

    .line 102
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 103
    return-void
.end method

.method setPendingFreeze(Z)V
    .locals 0
    .param p1, "freeze"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 183
    return-void
.end method

.method setReqCompactAction(I)V
    .locals 0
    .param p1, "reqCompactAction"    # I

    .line 112
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    .line 113
    return-void
.end method

.method setShouldNotFreeze(Z)V
    .locals 0
    .param p1, "shouldNotFreeze"    # Z

    .line 172
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 173
    return-void
.end method

.method shouldNotFreeze()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method
