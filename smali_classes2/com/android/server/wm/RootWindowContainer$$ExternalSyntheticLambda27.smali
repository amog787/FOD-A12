.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/app/ActivityOptions;

.field public final synthetic f$4:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$1:[Z

    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$3:Landroid/app/ActivityOptions;

    iput-object p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$4:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$1:[Z

    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$3:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$4:Lcom/android/server/wm/ActivityRecord;

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->lambda$resumeFocusedTasksTopActivities$19(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    return-void
.end method
