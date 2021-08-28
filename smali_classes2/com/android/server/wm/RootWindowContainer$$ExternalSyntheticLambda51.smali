.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$2:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getValidLaunchRootTaskInTaskDisplayArea$29$RootWindowContainer(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
