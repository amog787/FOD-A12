.class Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBehindFullscreenActivityHelper"
.end annotation


# instance fields
.field private mAboveTop:Z

.field private mBehindFullscreenActivity:Z

.field private mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlingOccluded:Z

.field private mToCheck:Lcom/android/server/wm/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public static synthetic $r8$lambda$Z288lF5KusMOPp0VbnaIT8ghxRg(Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/Task;
    .param p2, "x1"    # Lcom/android/server/wm/Task$1;

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 731
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 732
    if-ne p1, p2, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_0

    .line 735
    iput-boolean v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 736
    return v1

    .line 738
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 740
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 741
    return v2

    .line 744
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-eqz v0, :cond_3

    .line 746
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_5

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_4

    .line 750
    return v1

    .line 751
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_5

    .line 753
    return v1

    .line 755
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 756
    return v2
.end method

.method private reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 696
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iput-object p1, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    .line 697
    iput-object p2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 699
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 701
    iget-object v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    iput-boolean v1, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 705
    iput-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 708
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    .line 709
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 3
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 713
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V

    .line 715
    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_0

    .line 716
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 720
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper$$ExternalSyntheticLambda0;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 722
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 720
    invoke-static {v1, p0, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v1

    .line 723
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 724
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 726
    iget-boolean v2, p0, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    return v2
.end method
