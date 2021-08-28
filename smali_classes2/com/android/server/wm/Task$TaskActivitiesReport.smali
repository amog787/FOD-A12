.class Lcom/android/server/wm/Task$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field base:Lcom/android/server/wm/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4545
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    .line 4546
    return-void

    .line 4549
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 4552
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    .line 4554
    iget-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->INITIALIZING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4555
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4560
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4562
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4564
    :cond_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 4532
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->accept(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method reset()V
    .locals 1

    .line 4539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4541
    return-void
.end method
