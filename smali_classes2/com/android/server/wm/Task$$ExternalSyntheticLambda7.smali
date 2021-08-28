.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/Task;

    iput p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/Task;

    iget v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->lambda$setWindowingMode$16$Task(IZ)V

    return-void
.end method
