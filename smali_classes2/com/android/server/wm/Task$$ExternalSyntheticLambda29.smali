.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[I


# direct methods
.method public synthetic constructor <init>(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$2:Lcom/android/server/wm/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$4:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$2:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;->f$4:[I

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/Task;->lambda$startPausingLocked$19(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[ILcom/android/server/wm/Task;)V

    return-void
.end method
