.class final Lcom/android/server/vibrator/VibrationSettings$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 523
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 524
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/vibrator/VibrationSettings$UidObserver;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    .line 523
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 527
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 538
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 551
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 533
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 534
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 542
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 546
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    return-void
.end method
