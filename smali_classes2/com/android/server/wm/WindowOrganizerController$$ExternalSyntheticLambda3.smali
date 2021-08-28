.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$3:Landroid/window/WindowContainerTransaction$HierarchyOp;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowContainer;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/TaskDisplayArea;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowContainer;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$4:Ljava/util/ArrayList;

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentChildrenTasksHierarchyOp$2(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method
