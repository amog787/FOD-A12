.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;ZLjava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/Task;

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/Task;

    iget-boolean v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->lambda$dump$27$Task(ZLjava/io/PrintWriter;)V

    return-void
.end method
