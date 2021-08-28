.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;->f$3:Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$ensureActivitiesVisible$10(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V

    return-void
.end method
