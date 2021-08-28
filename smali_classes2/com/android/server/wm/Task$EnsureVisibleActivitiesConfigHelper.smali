.class Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnsureVisibleActivitiesConfigHelper"
.end annotation


# instance fields
.field private mBehindFullscreen:Z

.field private mPreserveWindow:Z

.field private mUpdateConfig:Z

.field final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/Task;
    .param p2, "x1"    # Lcom/android/server/wm/Task$1;

    .line 648
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/Task;)V

    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 660
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->reset(Z)V

    .line 665
    sget-object v0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper$$ExternalSyntheticLambda0;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 667
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 665
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 668
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 669
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 671
    iget-boolean v1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 676
    :cond_1
    return-void

    .line 661
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    :cond_2
    :goto_0
    return-void
.end method

.method processActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 679
    iget-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 680
    iget-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 681
    return v0
.end method

.method reset(Z)V
    .locals 1
    .param p1, "preserveWindow"    # Z

    .line 654
    iput-boolean p1, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 656
    iput-boolean v0, p0, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 657
    return-void
.end method
