.class final Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/Vibration$DebugInfo;,
        Lcom/android/server/vibrator/Vibration$Status;
    }
.end annotation


# static fields
.field private static final DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "Vibration"


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public final id:J

.field private mEffect:Landroid/os/CombinedVibration;

.field private mEndTimeDebug:J

.field public final mFallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalEffect:Landroid/os/CombinedVibration;

.field private final mStartTimeDebug:J

.field private mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public final opPkg:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final startTime:J

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # I
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    .line 95
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    .line 96
    iput-object p3, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    .line 97
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->startTime:J

    .line 99
    iput-object p4, p0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 100
    iput p5, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    .line 101
    iput-object p6, p0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    .line 104
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 105
    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private static transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;
    .locals 5
    .param p0, "combinedEffect"    # Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 163
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;>;"
    instance-of v0, p0, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 165
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_0
    instance-of v0, p0, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_2

    .line 167
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 168
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 170
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 171
    .local v1, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 172
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v3, v4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2

    .line 175
    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v1    # "combination":Landroid/os/CombinedVibration$ParallelCombination;
    :cond_2
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_4

    .line 176
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 177
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 180
    .local v1, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 181
    .local v3, "effect":Landroid/os/CombinedVibration;
    invoke-static {v3, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 182
    .end local v3    # "effect":Landroid/os/CombinedVibration;
    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2

    .line 186
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .end local v1    # "combination":Landroid/os/CombinedVibration$SequentialCombination;
    :cond_4
    return-object p0
.end method


# virtual methods
.method public addFallback(ILandroid/os/VibrationEffect;)V
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 137
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    .line 121
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 14

    .line 208
    new-instance v13, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iget-object v8, p0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v9, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v10, p0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v7, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v13
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    return-object v0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 129
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public hasEnded()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeating()Z
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateEffects(Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "updateFn":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;>;"
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 146
    .local v0, "newEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iput-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 150
    :cond_0
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    .line 152
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
