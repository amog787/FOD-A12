.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$0:Z

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$1:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/Task;->lambda$goToSleepIfPossible$18(Z[ILcom/android/server/wm/Task;)V

    return-void
.end method
